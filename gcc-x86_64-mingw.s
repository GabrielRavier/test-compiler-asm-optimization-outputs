	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.p2align 4
	.globl	make_ti
	.def	make_ti;	.scl	2;	.type	32;	.endef
	.seh_proc	make_ti
make_ti:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	xor	r10d, r10d
	mov	QWORD PTR 8[rsp], rcx
	mov	r9, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], r10
	mov	QWORD PTR 8[rsp], r9
	mov	QWORD PTR [rsp], rdx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	make_tu
	.def	make_tu;	.scl	2;	.type	32;	.endef
	.seh_proc	make_tu
make_tu:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	xor	r10d, r10d
	mov	QWORD PTR 8[rsp], rcx
	mov	r9, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], r10
	mov	QWORD PTR 8[rsp], r9
	mov	QWORD PTR [rsp], rdx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	memmove
	.def	memmove;	.scl	2;	.type	32;	.endef
	.seh_proc	memmove
memmove:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9, rdx
	cmp	rdx, rcx
	jnb	.L5
	test	r8, r8
	je	.L6
	.p2align 5
	.p2align 4
	.p2align 3
.L7:
	movzx	eax, BYTE PTR -1[r9+r8]
	mov	BYTE PTR -1[rcx+r8], al
	sub	r8, 1
	jne	.L7
.L6:
	mov	rax, rcx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	cmp	rcx, rdx
	je	.L6
	test	r8, r8
	je	.L6
	lea	rax, -1[r8]
	cmp	rax, 6
	jbe	.L18
	lea	r10, 1[rdx]
	mov	rdx, rcx
	sub	rdx, r10
	cmp	rdx, 14
	jbe	.L18
	cmp	rax, 14
	jbe	.L19
	mov	rdx, r8
	xor	eax, eax
	and	rdx, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L10:
	movdqu	xmm0, XMMWORD PTR [r9+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rdx, rax
	jne	.L10
	mov	rax, r8
	lea	r11, [r9+rdx]
	lea	r10, [rcx+rdx]
	sub	rax, rdx
	cmp	rdx, r8
	je	.L6
	lea	rbx, -1[rax]
	mov	r8, rax
	cmp	rbx, 6
	jbe	.L13
.L9:
	mov	r9, QWORD PTR [r9+rdx]
	mov	QWORD PTR [rcx+rdx], r9
	mov	rdx, r8
	and	rdx, -8
	add	r11, rdx
	add	r10, rdx
	sub	rax, rdx
	and	r8d, 7
	je	.L6
.L13:
	movzx	edx, BYTE PTR [r11]
	mov	BYTE PTR [r10], dl
	cmp	rax, 1
	je	.L6
	movzx	edx, BYTE PTR 1[r11]
	mov	BYTE PTR 1[r10], dl
	cmp	rax, 2
	je	.L6
	movzx	edx, BYTE PTR 2[r11]
	mov	BYTE PTR 2[r10], dl
	cmp	rax, 3
	je	.L6
	movzx	edx, BYTE PTR 3[r11]
	mov	BYTE PTR 3[r10], dl
	cmp	rax, 4
	je	.L6
	movzx	edx, BYTE PTR 4[r11]
	mov	BYTE PTR 4[r10], dl
	cmp	rax, 5
	je	.L6
	movzx	edx, BYTE PTR 5[r11]
	mov	BYTE PTR 5[r10], dl
	cmp	rax, 6
	je	.L6
	movzx	eax, BYTE PTR 6[r11]
	mov	BYTE PTR 6[r10], al
	jmp	.L6
	.p2align 4,,10
	.p2align 3
.L18:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L15:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	r8, rax
	jne	.L15
	jmp	.L6
.L19:
	mov	r11, r9
	mov	r10, rcx
	mov	rax, r8
	xor	edx, edx
	jmp	.L9
	.seh_endproc
	.p2align 4
	.globl	memccpy
	.def	memccpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memccpy
memccpy:
	.seh_endprologue
	movzx	r8d, r8b
	test	r9, r9
	jne	.L51
	jmp	.L53
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L54:
	add	rdx, 1
	add	rcx, 1
	sub	r9, 1
	je	.L53
.L51:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], r10b
	cmp	r10d, r8d
	jne	.L54
	lea	rax, 1[rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L53:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	memchr
	.def	memchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memchr
memchr:
	.seh_endprologue
	movzx	edx, dl
	test	r8, r8
	jne	.L61
	jmp	.L64
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L63:
	add	rcx, 1
	sub	r8, 1
	je	.L64
.L61:
	movzx	eax, BYTE PTR [rcx]
	cmp	eax, edx
	jne	.L63
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L64:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	memcmp
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	memcmp
memcmp:
	.seh_endprologue
	test	r8, r8
	jne	.L67
	jmp	.L71
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L69:
	add	rcx, 1
	add	rdx, 1
	sub	r8, 1
	je	.L71
.L67:
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	je	.L69
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L71:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	memcpy
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memcpy
memcpy:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	test	r8, r8
	je	.L75
	call	memcpy
	mov	rcx, rax
.L75:
	mov	rax, rcx
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	memrchr
	.def	memrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memrchr
memrchr:
	.seh_endprologue
	lea	rax, -1[rcx+r8]
	movzx	edx, dl
	sub	rcx, 1
	jmp	.L80
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L82:
	mov	r8, rax
	sub	rax, 1
	movzx	r9d, BYTE PTR [r8]
	cmp	r9d, edx
	je	.L79
.L80:
	cmp	rax, rcx
	jne	.L82
	xor	r8d, r8d
.L79:
	mov	rax, r8
	ret
	.seh_endproc
	.p2align 4
	.globl	memset
	.def	memset;	.scl	2;	.type	32;	.endef
	.seh_proc	memset
memset:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	test	r8, r8
	je	.L86
	movzx	edx, dl
	call	memset
	mov	rcx, rax
.L86:
	mov	rax, rcx
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	stpcpy
	.def	stpcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	stpcpy
stpcpy:
	.seh_endprologue
	mov	rax, rcx
	movzx	ecx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], cl
	test	cl, cl
	je	.L88
	.p2align 5
	.p2align 4
	.p2align 3
.L89:
	movzx	ecx, BYTE PTR 1[rdx]
	add	rdx, 1
	add	rax, 1
	mov	BYTE PTR [rax], cl
	test	cl, cl
	jne	.L89
.L88:
	ret
	.seh_endproc
	.p2align 4
	.globl	strchrnul
	.def	strchrnul;	.scl	2;	.type	32;	.endef
	.seh_proc	strchrnul
strchrnul:
	.seh_endprologue
	movzx	r8d, BYTE PTR [rcx]
	mov	rax, rcx
	movzx	edx, dl
	test	r8b, r8b
	jne	.L95
	jmp	.L94
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L97:
	movzx	r8d, BYTE PTR 1[rax]
	add	rax, 1
	test	r8b, r8b
	je	.L94
.L95:
	cmp	r8d, edx
	jne	.L97
.L94:
	ret
	.seh_endproc
	.p2align 4
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L103
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L106:
	add	rax, 1
	test	r8b, r8b
	je	.L105
.L103:
	movsx	r8d, BYTE PTR [rax]
	cmp	r8d, edx
	jne	.L106
	ret
	.p2align 4,,10
	.p2align 3
.L105:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	strcmp
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strcmp
strcmp:
	.seh_endprologue
	mov	eax, 1
	movzx	r8d, BYTE PTR [rcx]
	movzx	r9d, BYTE PTR [rdx]
	cmp	r8b, r9b
	je	.L108
	jmp	.L114
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L110:
	movzx	r8d, BYTE PTR [rcx+rax]
	add	rax, 1
	movzx	r9d, BYTE PTR -1[rdx+rax]
	cmp	r8b, r9b
	jne	.L114
.L108:
	test	r8b, r8b
	jne	.L110
	xor	eax, eax
	sub	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L114:
	movzx	eax, r8b
	sub	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	strlen
	.def	strlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strlen
strlen:
	.seh_endprologue
	cmp	BYTE PTR [rcx], 0
	je	.L118
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L117:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L117
	sub	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L118:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	strncmp
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strncmp
strncmp:
	.seh_endprologue
	xor	eax, eax
	mov	r9, rcx
	test	r8, r8
	je	.L120
	movzx	eax, BYTE PTR [rcx]
	sub	r8, 1
	mov	rcx, rdx
	add	r8, rdx
	test	al, al
	jne	.L124
	jmp	.L135
	.p2align 4,,10
	.p2align 3
.L137:
	cmp	rcx, r8
	je	.L123
	movzx	eax, BYTE PTR 1[r9]
	add	r9, 1
	lea	rdx, 1[rcx]
	test	al, al
	je	.L136
	mov	rcx, rdx
.L124:
	movzx	edx, BYTE PTR [rcx]
	test	dl, dl
	setne	r11b
	cmp	dl, al
	sete	r10b
	test	r11b, r10b
	jne	.L137
.L123:
	sub	eax, edx
.L120:
	ret
	.p2align 4,,10
	.p2align 3
.L136:
	movzx	edx, BYTE PTR 1[rcx]
	xor	eax, eax
	sub	eax, edx
	jmp	.L120
.L135:
	movzx	edx, BYTE PTR [rdx]
	xor	eax, eax
	sub	eax, edx
	jmp	.L120
	.seh_endproc
	.p2align 4
	.globl	swab
	.def	swab;	.scl	2;	.type	32;	.endef
	.seh_proc	swab
swab:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	cmp	r8, 1
	jle	.L138
	mov	rbx, r8
	lea	rax, -2[r8]
	shr	rbx
	lea	r11, -1[rbx]
	cmp	rax, 29
	jbe	.L145
	mov	esi, 16711935
	mov	r10, r8
	mov	r9, r8
	xor	eax, eax
	movd	xmm5, esi
	shr	r10, 5
	and	r9, -32
	pshufd	xmm4, xmm5, 0
	movaps	XMMWORD PTR [rsp], xmm4
	.p2align 4
	.p2align 3
.L141:
	movdqu	xmm0, XMMWORD PTR [rcx+rax]
	movdqu	xmm2, XMMWORD PTR 16[rcx+rax]
	movdqa	xmm1, XMMWORD PTR [rsp]
	movdqa	xmm3, XMMWORD PTR [rsp]
	pand	xmm1, xmm0
	psrlw	xmm0, 8
	pand	xmm3, xmm2
	psrlw	xmm2, 8
	packuswb	xmm1, xmm3
	packuswb	xmm0, xmm2
	movdqa	xmm2, xmm0
	punpckhbw	xmm0, xmm1
	punpcklbw	xmm2, xmm1
	movups	XMMWORD PTR 16[rdx+rax], xmm0
	movups	XMMWORD PTR [rdx+rax], xmm2
	add	rax, 32
	cmp	r9, rax
	jne	.L141
	mov	r9, r10
	mov	rax, r10
	sal	r9, 4
	sal	rax, 5
	mov	rsi, r9
	lea	r10, [rdx+rax]
	add	rax, rcx
	neg	rsi
	lea	r8, [r8+rsi*2]
	cmp	r9, rbx
	je	.L138
.L140:
	sub	r11, r9
	lea	rbx, 1[r11]
	cmp	r11, 6
	jbe	.L143
	movq	xmm3, QWORD PTR .LC1[rip]
	add	r9, r9
	add	rcx, r9
	add	r9, rdx
	mov	rdx, rbx
	movq	xmm0, QWORD PTR [rcx]
	movq	xmm2, QWORD PTR 8[rcx]
	movdqa	xmm1, xmm3
	and	rdx, -8
	lea	rcx, [rdx+rdx]
	neg	rdx
	pand	xmm1, xmm0
	pand	xmm3, xmm2
	add	r10, rcx
	add	rax, rcx
	psrlw	xmm2, 8
	packuswb	xmm1, xmm3
	lea	r8, [r8+rdx*2]
	and	ebx, 7
	psrlw	xmm0, 8
	pshufd	xmm1, xmm1, 8
	packuswb	xmm0, xmm2
	pshufd	xmm0, xmm0, 8
	movdqa	xmm2, xmm0
	punpcklbw	xmm0, xmm1
	punpcklbw	xmm2, xmm1
	pshufd	xmm0, xmm0, 78
	movq	QWORD PTR [r9], xmm2
	movq	QWORD PTR 8[r9], xmm0
	je	.L138
.L143:
	movzx	edx, WORD PTR [rax]
	rol	dx, 8
	mov	WORD PTR [r10], dx
	cmp	r8, 3
	jle	.L138
	movzx	edx, WORD PTR 2[rax]
	rol	dx, 8
	mov	WORD PTR 2[r10], dx
	cmp	r8, 5
	jle	.L138
	movzx	edx, WORD PTR 4[rax]
	rol	dx, 8
	mov	WORD PTR 4[r10], dx
	cmp	r8, 7
	jle	.L138
	movzx	edx, WORD PTR 6[rax]
	rol	dx, 8
	mov	WORD PTR 6[r10], dx
	cmp	r8, 9
	jle	.L138
	movzx	edx, WORD PTR 8[rax]
	rol	dx, 8
	mov	WORD PTR 8[r10], dx
	cmp	r8, 11
	jle	.L138
	movzx	edx, WORD PTR 10[rax]
	rol	dx, 8
	mov	WORD PTR 10[r10], dx
	cmp	r8, 13
	jle	.L138
	movzx	eax, WORD PTR 12[rax]
	rol	ax, 8
	mov	WORD PTR 12[r10], ax
.L138:
	add	rsp, 24
	pop	rbx
	pop	rsi
	ret
.L145:
	mov	r10, rdx
	mov	rax, rcx
	xor	r9d, r9d
	jmp	.L140
	.seh_endproc
	.p2align 4
	.globl	isalpha
	.def	isalpha;	.scl	2;	.type	32;	.endef
	.seh_proc	isalpha
isalpha:
	.seh_endprologue
	xor	eax, eax
	or	ecx, 32
	sub	ecx, 97
	cmp	ecx, 25
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	isascii
	.def	isascii;	.scl	2;	.type	32;	.endef
	.seh_proc	isascii
isascii:
	.seh_endprologue
	xor	eax, eax
	cmp	ecx, 127
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	isblank
	.def	isblank;	.scl	2;	.type	32;	.endef
	.seh_proc	isblank
isblank:
	.seh_endprologue
	cmp	ecx, 32
	sete	al
	cmp	ecx, 9
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.seh_endproc
	.p2align 4
	.globl	iscntrl
	.def	iscntrl;	.scl	2;	.type	32;	.endef
	.seh_proc	iscntrl
iscntrl:
	.seh_endprologue
	cmp	ecx, 31
	setbe	al
	cmp	ecx, 127
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.seh_endproc
	.p2align 4
	.globl	isdigit
	.def	isdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	isdigit
isdigit:
	.seh_endprologue
	xor	eax, eax
	sub	ecx, 48
	cmp	ecx, 9
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	isgraph
	.def	isgraph;	.scl	2;	.type	32;	.endef
	.seh_proc	isgraph
isgraph:
	.seh_endprologue
	xor	eax, eax
	sub	ecx, 33
	cmp	ecx, 93
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	islower
	.def	islower;	.scl	2;	.type	32;	.endef
	.seh_proc	islower
islower:
	.seh_endprologue
	xor	eax, eax
	sub	ecx, 97
	cmp	ecx, 25
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	isprint
	.def	isprint;	.scl	2;	.type	32;	.endef
	.seh_proc	isprint
isprint:
	.seh_endprologue
	xor	eax, eax
	sub	ecx, 32
	cmp	ecx, 94
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	isspace
	.def	isspace;	.scl	2;	.type	32;	.endef
	.seh_proc	isspace
isspace:
	.seh_endprologue
	lea	eax, -9[rcx]
	cmp	eax, 4
	setbe	al
	cmp	ecx, 32
	sete	dl
	or	eax, edx
	movzx	eax, al
	ret
	.seh_endproc
	.p2align 4
	.globl	isupper
	.def	isupper;	.scl	2;	.type	32;	.endef
	.seh_proc	isupper
isupper:
	.seh_endprologue
	xor	eax, eax
	sub	ecx, 65
	cmp	ecx, 25
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	iswcntrl
	.def	iswcntrl;	.scl	2;	.type	32;	.endef
	.seh_proc	iswcntrl
iswcntrl:
	.seh_endprologue
	movzx	eax, cx
	lea	edx, -127[rax]
	cmp	edx, 32
	jbe	.L162
	cmp	cx, 31
	jbe	.L162
	lea	ecx, -8232[rax]
	mov	edx, 1
	cmp	ecx, 1
	jbe	.L160
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L162:
	mov	edx, 1
.L160:
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	iswdigit
	.def	iswdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	iswdigit
iswdigit:
	.seh_endprologue
	xor	eax, eax
	movzx	ecx, cx
	sub	ecx, 48
	cmp	ecx, 9
	setbe	al
	ret
	.seh_endproc
	.p2align 4
	.globl	iswprint
	.def	iswprint;	.scl	2;	.type	32;	.endef
	.seh_proc	iswprint
iswprint:
	.seh_endprologue
	cmp	cx, 254
	jbe	.L171
	movzx	eax, cx
	lea	edx, -8234[rax]
	cmp	edx, 47061
	jbe	.L168
	cmp	cx, 8231
	jbe	.L168
	lea	r8d, -57344[rax]
	mov	edx, 1
	cmp	r8d, 8184
	jbe	.L165
	sub	eax, 65532
	xor	edx, edx
	cmp	eax, 1048579
	ja	.L165
	not	ecx
	xor	edx, edx
	test	cx, -2
	setne	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L168:
	mov	edx, 1
.L165:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L171:
	lea	eax, 1[rcx]
	xor	edx, edx
	and	eax, 127
	cmp	eax, 32
	setg	dl
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	iswxdigit
	.def	iswxdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	iswxdigit
iswxdigit:
	.seh_endprologue
	mov	edx, 1
	movzx	eax, cx
	sub	eax, 48
	cmp	eax, 9
	jbe	.L172
	or	ecx, 32
	xor	edx, edx
	movzx	ecx, cx
	sub	ecx, 97
	cmp	ecx, 5
	setbe	dl
.L172:
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	toascii
	.def	toascii;	.scl	2;	.type	32;	.endef
	.seh_proc	toascii
toascii:
	.seh_endprologue
	mov	eax, ecx
	and	eax, 127
	ret
	.seh_endproc
	.p2align 4
	.globl	fdim
	.def	fdim;	.scl	2;	.type	32;	.endef
	.seh_proc	fdim
fdim:
	.seh_endprologue
	comisd	xmm0, xmm1
	jbe	.L181
	subsd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L181:
	pxor	xmm0, xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	fdimf
	.def	fdimf;	.scl	2;	.type	32;	.endef
	.seh_proc	fdimf
fdimf:
	.seh_endprologue
	comiss	xmm0, xmm1
	jbe	.L187
	subss	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L187:
	pxor	xmm0, xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	fmax
	.def	fmax;	.scl	2;	.type	32;	.endef
	.seh_proc	fmax
fmax:
	.seh_endprologue
	pxor	xmm3, xmm3
	comisd	xmm3, xmm0
	movapd	xmm2, xmm0
	maxsd	xmm0, xmm1
	seta	dl
	comisd	xmm3, xmm1
	seta	al
	cmp	dl, al
	je	.L188
	movapd	xmm0, xmm2
	cmpltsd	xmm0, xmm3
	andpd	xmm1, xmm0
	andnpd	xmm0, xmm2
	orpd	xmm0, xmm1
.L188:
	ret
	.seh_endproc
	.p2align 4
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	.seh_endprologue
	pxor	xmm3, xmm3
	comiss	xmm3, xmm0
	movaps	xmm2, xmm0
	maxss	xmm0, xmm1
	seta	dl
	comiss	xmm3, xmm1
	seta	al
	cmp	dl, al
	je	.L194
	movaps	xmm0, xmm2
	cmpltss	xmm0, xmm3
	andps	xmm1, xmm0
	andnps	xmm0, xmm2
	orps	xmm0, xmm1
.L194:
	ret
	.seh_endproc
	.p2align 4
	.globl	fmaxl
	.def	fmaxl;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxl
fmaxl:
	.seh_endprologue
	fld	TBYTE PTR [rdx]
	fld	TBYTE PTR [r8]
	mov	rax, rcx
	fldz
	fcomi	st, st(2)
	seta	cl
	fcomi	st, st(1)
	seta	dl
	cmp	cl, dl
	je	.L201
	fcomip	st, st(2)
	fcmovbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rax]
	ret
	.p2align 4,,10
	.p2align 3
.L201:
	fstp	st(0)
	fxch	st(1)
	fcomi	st, st(1)
	fcmovb	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rax]
	ret
	.seh_endproc
	.p2align 4
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	pxor	xmm3, xmm3
	comisd	xmm3, xmm0
	movapd	xmm2, xmm0
	minsd	xmm0, xmm1
	seta	dl
	comisd	xmm3, xmm1
	seta	al
	cmp	dl, al
	je	.L206
	movapd	xmm0, xmm2
	cmpltsd	xmm0, xmm3
	andpd	xmm2, xmm0
	andnpd	xmm0, xmm1
	orpd	xmm0, xmm2
.L206:
	ret
	.seh_endproc
	.p2align 4
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	.seh_endprologue
	pxor	xmm3, xmm3
	comiss	xmm3, xmm0
	movaps	xmm2, xmm0
	minss	xmm0, xmm1
	seta	dl
	comiss	xmm3, xmm1
	seta	al
	cmp	dl, al
	je	.L212
	movaps	xmm0, xmm2
	cmpltss	xmm0, xmm3
	andps	xmm2, xmm0
	andnps	xmm0, xmm1
	orps	xmm0, xmm2
.L212:
	ret
	.seh_endproc
	.p2align 4
	.globl	fminl
	.def	fminl;	.scl	2;	.type	32;	.endef
	.seh_proc	fminl
fminl:
	.seh_endprologue
	fld	TBYTE PTR [rdx]
	fld	TBYTE PTR [r8]
	mov	rax, rcx
	fldz
	fcomi	st, st(2)
	seta	cl
	fcomi	st, st(1)
	seta	dl
	cmp	cl, dl
	je	.L219
	fcomip	st, st(2)
	fcmovnbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rax]
	ret
	.p2align 4,,10
	.p2align 3
.L219:
	fstp	st(0)
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rax]
	ret
	.seh_endproc
	.p2align 4
	.globl	l64a
	.def	l64a;	.scl	2;	.type	32;	.endef
	.seh_proc	l64a
l64a:
	.seh_endprologue
	lea	r9, s.0[rip]
	mov	rax, r9
	test	ecx, ecx
	je	.L225
	lea	r8, digits[rip]
	.p2align 5
	.p2align 4
	.p2align 3
.L226:
	mov	edx, ecx
	add	rax, 1
	and	edx, 63
	movzx	edx, BYTE PTR [r8+rdx]
	mov	BYTE PTR -1[rax], dl
	shr	ecx, 6
	jne	.L226
.L225:
	mov	BYTE PTR [rax], 0
	mov	rax, r9
	ret
	.seh_endproc
	.p2align 4
	.globl	srand
	.def	srand;	.scl	2;	.type	32;	.endef
	.seh_proc	srand
srand:
	.seh_endprologue
	lea	eax, -1[rcx]
	mov	QWORD PTR seed[rip], rax
	ret
	.seh_endproc
	.p2align 4
	.globl	rand
	.def	rand;	.scl	2;	.type	32;	.endef
	.seh_proc	rand
rand:
	.seh_endprologue
	movabs	rax, 6364136223846793005
	imul	rax, QWORD PTR seed[rip]
	add	rax, 1
	mov	QWORD PTR seed[rip], rax
	shr	rax, 33
	ret
	.seh_endproc
	.p2align 4
	.globl	insque
	.def	insque;	.scl	2;	.type	32;	.endef
	.seh_proc	insque
insque:
	.seh_endprologue
	test	rdx, rdx
	je	.L237
	movq	xmm0, QWORD PTR [rdx]
	movq	xmm1, rdx
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR [rcx], xmm0
	mov	QWORD PTR [rdx], rcx
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L231
	mov	QWORD PTR 8[rax], rcx
.L231:
	ret
	.p2align 4,,10
	.p2align 3
.L237:
	pxor	xmm0, xmm0
	movups	XMMWORD PTR [rcx], xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	remque
	.def	remque;	.scl	2;	.type	32;	.endef
	.seh_proc	remque
remque:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L239
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L239:
	mov	rdx, QWORD PTR 8[rcx]
	test	rdx, rdx
	je	.L238
	mov	QWORD PTR [rdx], rax
.L238:
	ret
	.seh_endproc
	.p2align 4
	.globl	lsearch
	.def	lsearch;	.scl	2;	.type	32;	.endef
	.seh_proc	lsearch
lsearch:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rdi, QWORD PTR [r8]
	mov	r13, QWORD PTR 144[rsp]
	mov	QWORD PTR 120[rsp], rdx
	mov	rbp, rcx
	mov	r14, r8
	mov	rsi, r9
	test	rdi, rdi
	je	.L248
	mov	rbx, rdx
	xor	r15d, r15d
	jmp	.L250
	.p2align 4,,10
	.p2align 3
.L262:
	add	r15, 1
	add	rbx, rsi
	cmp	rdi, r15
	je	.L248
.L250:
	mov	r12, rbx
	mov	rdx, rbx
	mov	rcx, rbp
	call	r13
	test	eax, eax
	jne	.L262
.L247:
	mov	rax, r12
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L248:
	lea	rax, 1[rdi]
	imul	rdi, rsi
	add	rdi, QWORD PTR 120[rsp]
	mov	QWORD PTR [r14], rax
	mov	r12, rdi
	test	rsi, rsi
	je	.L247
	mov	r8, rsi
	mov	rdx, rbp
	mov	rcx, rdi
	call	memmove
	jmp	.L247
	.seh_endproc
	.p2align 4
	.globl	lfind
	.def	lfind;	.scl	2;	.type	32;	.endef
	.seh_proc	lfind
lfind:
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r12, QWORD PTR [r8]
	mov	r13, QWORD PTR 128[rsp]
	mov	rdi, rcx
	mov	rbp, r9
	test	r12, r12
	je	.L264
	mov	rbx, rdx
	xor	esi, esi
	jmp	.L266
	.p2align 4,,10
	.p2align 3
.L274:
	add	rsi, 1
	add	rbx, rbp
	cmp	r12, rsi
	je	.L264
.L266:
	mov	r14, rbx
	mov	rdx, rbx
	mov	rcx, rdi
	call	r13
	test	eax, eax
	jne	.L274
.L263:
	mov	rax, r14
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L264:
	xor	r14d, r14d
	jmp	.L263
	.seh_endproc
	.p2align 4
	.globl	abs
	.def	abs;	.scl	2;	.type	32;	.endef
	.seh_proc	abs
abs:
	.seh_endprologue
	mov	eax, ecx
	neg	eax
	cmovs	eax, ecx
	ret
	.seh_endproc
	.p2align 4
	.globl	atoi
	.def	atoi;	.scl	2;	.type	32;	.endef
	.seh_proc	atoi
atoi:
	.seh_endprologue
	jmp	.L299
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L294:
	add	rcx, 1
.L299:
	movsx	edx, BYTE PTR [rcx]
	lea	r8d, -9[rdx]
	mov	eax, edx
	cmp	r8d, 4
	jbe	.L294
	cmp	al, 32
	je	.L294
	cmp	al, 43
	je	.L280
	cmp	al, 45
	jne	.L300
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L289
	mov	r11d, 1
.L283:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L286:
	lea	ecx, [r9+r9*4]
	movsx	r8d, BYTE PTR 1[r10]
	lea	edx, -48[rax]
	add	r10, 1
	add	ecx, ecx
	movsx	edx, dl
	mov	r9d, ecx
	mov	eax, r8d
	sub	r8d, 48
	sub	r9d, edx
	cmp	r8d, 9
	jbe	.L286
	sub	edx, ecx
	test	r11d, r11d
	cmove	r9d, edx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L300:
	sub	edx, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	edx, 9
	jbe	.L283
.L289:
	xor	r9d, r9d
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L280:
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	xor	r11d, r11d
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L283
	jmp	.L289
	.seh_endproc
	.p2align 4
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	.seh_endprologue
	jmp	.L322
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L318:
	add	rcx, 1
.L322:
	movsx	edx, BYTE PTR [rcx]
	lea	r8d, -9[rdx]
	mov	eax, edx
	cmp	r8d, 4
	jbe	.L318
	cmp	al, 32
	je	.L318
	cmp	al, 43
	je	.L305
	cmp	al, 45
	jne	.L306
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	r11d, 1
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L313
.L307:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L310:
	lea	ecx, [r9+r9*4]
	movsx	r8d, BYTE PTR 1[r10]
	lea	edx, -48[rax]
	add	r10, 1
	add	ecx, ecx
	movsx	edx, dl
	mov	r9d, ecx
	mov	eax, r8d
	sub	r8d, 48
	sub	r9d, edx
	cmp	r8d, 9
	jbe	.L310
	sub	edx, ecx
	test	r11d, r11d
	cmove	r9d, edx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L306:
	sub	edx, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	edx, 9
	jbe	.L307
.L313:
	xor	r9d, r9d
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L305:
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L313
	xor	r11d, r11d
	jmp	.L307
	.seh_endproc
	.p2align 4
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	.seh_endprologue
	jmp	.L346
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L341:
	add	rcx, 1
.L346:
	movsx	edx, BYTE PTR [rcx]
	lea	r8d, -9[rdx]
	mov	eax, edx
	cmp	r8d, 4
	jbe	.L341
	cmp	al, 32
	je	.L341
	cmp	al, 43
	je	.L327
	cmp	al, 45
	jne	.L347
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L336
	mov	r11d, 1
.L330:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L333:
	lea	rcx, [r9+r9*4]
	movsx	r8d, BYTE PTR 1[r10]
	lea	edx, -48[rax]
	add	r10, 1
	add	rcx, rcx
	movsx	rdx, dl
	mov	r9, rcx
	mov	eax, r8d
	sub	r8d, 48
	sub	r9, rdx
	cmp	r8d, 9
	jbe	.L333
	sub	rdx, rcx
	test	r11d, r11d
	cmove	r9, rdx
	mov	rax, r9
	ret
	.p2align 4,,10
	.p2align 3
.L347:
	sub	edx, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	edx, 9
	jbe	.L330
.L336:
	xor	r9d, r9d
	mov	rax, r9
	ret
	.p2align 4,,10
	.p2align 3
.L327:
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	xor	r11d, r11d
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L330
	jmp	.L336
	.seh_endproc
	.p2align 4
	.globl	bsearch
	.def	bsearch;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch
bsearch:
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	r13, QWORD PTR 128[rsp]
	mov	r12, rcx
	mov	rbp, rdx
	mov	rbx, r8
	mov	rdi, r9
	.p2align 4
	.p2align 3
.L361:
	test	rbx, rbx
	je	.L349
.L362:
	mov	r14, rbx
	mov	rcx, r12
	shr	r14
	mov	rsi, r14
	imul	rsi, rdi
	add	rsi, rbp
	mov	rdx, rsi
	call	r13
	test	eax, eax
	js	.L353
	je	.L348
	sub	rbx, 1
	lea	rbp, [rsi+rdi]
	sub	rbx, r14
	test	rbx, rbx
	jne	.L362
.L349:
	xor	esi, esi
.L348:
	mov	rax, rsi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.p2align 4,,10
	.p2align 3
.L353:
	mov	rbx, r14
	jmp	.L361
	.seh_endproc
	.p2align 4
	.globl	bsearch_r
	.def	bsearch_r;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch_r
bsearch_r:
	push	r15
	.seh_pushreg	r15
	push	r14
	.seh_pushreg	r14
	push	r13
	.seh_pushreg	r13
	push	r12
	.seh_pushreg	r12
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	r13, QWORD PTR 144[rsp]
	mov	r12, QWORD PTR 152[rsp]
	mov	rbp, rcx
	mov	rdi, rdx
	mov	rsi, r9
	mov	r14d, r8d
	test	r8d, r8d
	je	.L368
	.p2align 4
	.p2align 3
.L364:
	mov	r15d, r14d
	mov	r8, r12
	mov	rcx, rbp
	sar	r15d
	movsx	rbx, r15d
	imul	rbx, rsi
	add	rbx, rdi
	mov	rdx, rbx
	call	r13
	test	eax, eax
	je	.L363
	jle	.L366
	sub	r14d, 1
	lea	rdi, [rbx+rsi]
	sar	r14d
	jne	.L364
.L368:
	xor	ebx, ebx
.L363:
	mov	rax, rbx
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	pop	r15
	ret
	.p2align 4,,10
	.p2align 3
.L366:
	test	r15d, r15d
	je	.L368
	mov	r14d, r15d
	jmp	.L364
	.seh_endproc
	.p2align 4
	.globl	div
	.def	div;	.scl	2;	.type	32;	.endef
	.seh_proc	div
div:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	cdq
	idiv	ecx
	sal	rdx, 32
	or	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	imaxabs
	.def	imaxabs;	.scl	2;	.type	32;	.endef
	.seh_proc	imaxabs
imaxabs:
	.seh_endprologue
	mov	rax, rcx
	neg	rax
	cmovs	rax, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	imaxdiv
	.def	imaxdiv;	.scl	2;	.type	32;	.endef
	.seh_proc	imaxdiv
imaxdiv:
	.seh_endprologue
	mov	rax, rdx
	cqo
	idiv	r8
	mov	QWORD PTR [rcx], rax
	mov	rax, rcx
	mov	QWORD PTR 8[rcx], rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	labs
	.def	labs;	.scl	2;	.type	32;	.endef
	.seh_proc	labs
labs:
	.seh_endprologue
	mov	eax, ecx
	neg	eax
	cmovs	eax, ecx
	ret
	.seh_endproc
	.p2align 4
	.globl	ldiv
	.def	ldiv;	.scl	2;	.type	32;	.endef
	.seh_proc	ldiv
ldiv:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	cdq
	idiv	ecx
	sal	rdx, 32
	or	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	llabs
	.def	llabs;	.scl	2;	.type	32;	.endef
	.seh_proc	llabs
llabs:
	.seh_endprologue
	mov	rax, rcx
	neg	rax
	cmovs	rax, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	lldiv
	.def	lldiv;	.scl	2;	.type	32;	.endef
	.seh_proc	lldiv
lldiv:
	.seh_endprologue
	mov	rax, rdx
	cqo
	idiv	r8
	mov	QWORD PTR [rcx], rax
	mov	rax, rcx
	mov	QWORD PTR 8[rcx], rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	wcschr
	.def	wcschr;	.scl	2;	.type	32;	.endef
	.seh_proc	wcschr
wcschr:
	.seh_endprologue
	movzx	eax, WORD PTR [rcx]
	test	ax, ax
	jne	.L384
	jmp	.L387
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L386:
	movzx	eax, WORD PTR 2[rcx]
	add	rcx, 2
	test	ax, ax
	je	.L387
.L384:
	cmp	dx, ax
	jne	.L386
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L387:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	wcscmp
	.def	wcscmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscmp
wcscmp:
	.seh_endprologue
	mov	eax, 2
	movzx	r8d, WORD PTR [rcx]
	movzx	r9d, WORD PTR [rdx]
	cmp	r8w, r9w
	je	.L390
	jmp	.L391
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L392:
	movzx	r8d, WORD PTR [rcx+rax]
	add	rax, 2
	movzx	r9d, WORD PTR -2[rdx+rax]
	cmp	r8w, r9w
	jne	.L391
.L390:
	test	r8w, r8w
	jne	.L392
.L391:
	mov	eax, -1
	cmp	r8w, r9w
	jb	.L389
	xor	eax, eax
	cmp	r9w, r8w
	setb	al
.L389:
	ret
	.seh_endproc
	.p2align 4
	.globl	wcscpy
	.def	wcscpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscpy
wcscpy:
	.seh_endprologue
	xor	r8d, r8d
	mov	rax, rcx
	.p2align 5
	.p2align 4
	.p2align 3
.L398:
	movzx	r9d, WORD PTR [rdx+r8]
	mov	WORD PTR [rax+r8], r9w
	add	r8, 2
	test	r9w, r9w
	jne	.L398
	ret
	.seh_endproc
	.p2align 4
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	cmp	WORD PTR [rcx], 0
	je	.L403
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L402:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L402
	sub	rax, rcx
	sar	rax
	ret
	.p2align 4,,10
	.p2align 3
.L403:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	wcsncmp
	.def	wcsncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcsncmp
wcsncmp:
	.seh_endprologue
	test	r8, r8
	jne	.L406
	jmp	.L412
	.p2align 4,,10
	.p2align 3
.L417:
	test	ax, ax
	je	.L410
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L412
.L406:
	movzx	eax, WORD PTR [rcx]
	cmp	WORD PTR [rdx], ax
	je	.L417
.L410:
	movzx	ecx, WORD PTR [rcx]
	movzx	eax, WORD PTR [rdx]
	cmp	cx, ax
	jb	.L418
	cmp	ax, cx
	setb	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L418:
	mov	eax, -1
	ret
	.p2align 4,,10
	.p2align 3
.L412:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	wmemchr
	.def	wmemchr;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemchr
wmemchr:
	.seh_endprologue
	test	r8, r8
	jne	.L420
	jmp	.L423
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L422:
	add	rcx, 2
	sub	r8, 1
	je	.L423
.L420:
	cmp	WORD PTR [rcx], dx
	jne	.L422
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L423:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	wmemcmp
	.def	wmemcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcmp
wmemcmp:
	.seh_endprologue
	test	r8, r8
	jne	.L426
	jmp	.L431
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L428:
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L431
.L426:
	movzx	eax, WORD PTR [rcx]
	cmp	ax, WORD PTR [rdx]
	je	.L428
	movzx	edx, WORD PTR [rdx]
	cmp	ax, dx
	jb	.L434
	cmp	dx, ax
	setb	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L431:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L434:
	mov	eax, -1
	ret
	.seh_endproc
	.p2align 4
	.globl	wmemcpy
	.def	wmemcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcpy
wmemcpy:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	test	r8, r8
	je	.L436
	add	r8, r8
	call	memcpy
	mov	rcx, rax
.L436:
	mov	rax, rcx
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	wmemmove
	.def	wmemmove;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemmove
wmemmove:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	cmp	rcx, rdx
	je	.L471
	mov	rax, rcx
	lea	r10, [r8+r8]
	lea	r9, -1[r8]
	sub	rax, rdx
	cmp	rax, r10
	jb	.L442
	test	r8, r8
	je	.L471
	cmp	r9, 2
	jbe	.L461
	lea	r10, 2[rdx]
	mov	rax, rcx
	sub	rax, r10
	cmp	rax, 12
	jbe	.L461
	cmp	r9, 6
	jbe	.L462
	mov	r11, r8
	xor	eax, eax
	xor	r10d, r10d
	shr	r11, 3
	.p2align 5
	.p2align 4
	.p2align 3
.L453:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	add	r10, 1
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	r11, r10
	jne	.L453
	mov	r10, r8
	and	r10, -8
	lea	rax, [r10+r10]
	sub	r9, r10
	lea	r11, [rdx+rax]
	add	rax, rcx
	test	r8b, 7
	je	.L471
	sub	r8, r10
	lea	rbx, -1[r8]
	cmp	rbx, 2
	jbe	.L456
.L452:
	mov	rdx, QWORD PTR [rdx+r10*2]
	mov	QWORD PTR [rcx+r10*2], rdx
	mov	rdx, r8
	and	rdx, -4
	sub	r9, rdx
	add	rdx, rdx
	add	r11, rdx
	add	rax, rdx
	and	r8d, 3
	je	.L471
.L456:
	movzx	edx, WORD PTR [r11]
	mov	WORD PTR [rax], dx
	test	r9, r9
	je	.L471
	movzx	edx, WORD PTR 2[r11]
	mov	WORD PTR 2[rax], dx
	cmp	r9, 1
	je	.L471
	movzx	edx, WORD PTR 4[r11]
	mov	WORD PTR 4[rax], dx
.L471:
	mov	rax, rcx
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L442:
	test	r8, r8
	je	.L471
	cmp	r9, 2
	jbe	.L449
	mov	rax, rcx
	sub	rax, rdx
	add	rax, 6
	cmp	rax, 4
	jbe	.L449
	mov	rbx, r8
	sub	r10, 8
	xor	eax, eax
	shr	rbx, 2
	lea	rsi, [rdx+r10]
	add	r10, rcx
	neg	rbx
	sal	rbx, 3
	.p2align 5
	.p2align 4
	.p2align 3
.L446:
	mov	r11, QWORD PTR [rsi+rax]
	mov	QWORD PTR [r10+rax], r11
	sub	rax, 8
	cmp	rax, rbx
	jne	.L446
	mov	rax, r8
	and	rax, -4
	sub	r9, rax
	and	r8d, 3
	je	.L471
	movzx	eax, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], ax
	test	r9, r9
	je	.L471
	sub	r9, 1
	movzx	r8d, WORD PTR [rdx+r9*2]
	lea	rax, [r9+r9]
	mov	WORD PTR [rcx+r9*2], r8w
	je	.L471
	movzx	edx, WORD PTR -2[rdx+rax]
	mov	WORD PTR -2[rcx+rax], dx
	jmp	.L471
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L449:
	movzx	eax, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], ax
	sub	r9, 1
	jb	.L471
	movzx	eax, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], ax
	sub	r9, 1
	jnb	.L449
	jmp	.L471
	.p2align 4,,10
	.p2align 3
.L461:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L458:
	movzx	r9d, WORD PTR [rdx+rax*2]
	mov	WORD PTR [rcx+rax*2], r9w
	add	rax, 1
	cmp	r8, rax
	jne	.L458
	jmp	.L471
.L462:
	mov	r11, rdx
	mov	rax, rcx
	xor	r10d, r10d
	jmp	.L452
	.seh_endproc
	.p2align 4
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	.seh_endprologue
	mov	r9, rcx
	lea	r11, -1[r8]
	test	r8, r8
	je	.L494
	cmp	r11, 6
	jbe	.L500
	movd	xmm0, edx
	mov	r10, r8
	xor	eax, eax
	punpcklwd	xmm0, xmm0
	shr	r10, 3
	pshufd	xmm0, xmm0, 0
	.p2align 5
	.p2align 4
	.p2align 3
.L496:
	mov	rcx, rax
	add	rax, 1
	sal	rcx, 4
	movups	XMMWORD PTR [r9+rcx], xmm0
	cmp	r10, rax
	jne	.L496
	mov	rax, r8
	and	rax, -8
	sub	r11, rax
	lea	rcx, [r9+rax*2]
	test	r8b, 7
	je	.L494
.L495:
	sub	r8, rax
	lea	r10, -1[r8]
	cmp	r10, 2
	jbe	.L498
	movd	xmm1, edx
	pshuflw	xmm0, xmm1, 0
	movq	QWORD PTR [r9+rax*2], xmm0
	mov	rax, r8
	and	rax, -4
	sub	r11, rax
	and	r8d, 3
	lea	rcx, [rcx+rax*2]
	je	.L494
.L498:
	mov	WORD PTR [rcx], dx
	test	r11, r11
	je	.L494
	mov	WORD PTR 2[rcx], dx
	cmp	r11, 1
	je	.L494
	mov	WORD PTR 4[rcx], dx
.L494:
	mov	rax, r9
	ret
.L500:
	xor	eax, eax
	jmp	.L495
	.seh_endproc
	.p2align 4
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9, rdx
	cmp	rcx, rdx
	jnb	.L518
	test	r8, r8
	je	.L517
	.p2align 5
	.p2align 4
	.p2align 3
.L520:
	movzx	eax, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[r9+r8], al
	sub	r8, 1
	jne	.L520
.L517:
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L518:
	je	.L517
	test	r8, r8
	je	.L517
	lea	rax, -1[r8]
	cmp	rax, 6
	jbe	.L531
	lea	r10, 1[rcx]
	sub	rdx, r10
	cmp	rdx, 14
	jbe	.L531
	cmp	rax, 14
	jbe	.L532
	mov	rdx, r8
	xor	eax, eax
	and	rdx, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L523:
	movdqu	xmm0, XMMWORD PTR [rcx+rax]
	movups	XMMWORD PTR [r9+rax], xmm0
	add	rax, 16
	cmp	rdx, rax
	jne	.L523
	mov	rax, r8
	lea	r10, [r9+rdx]
	lea	r11, [rcx+rdx]
	sub	rax, rdx
	cmp	rdx, r8
	je	.L517
	lea	rbx, -1[rax]
	mov	r8, rax
	cmp	rbx, 6
	jbe	.L526
.L522:
	mov	rcx, QWORD PTR [rcx+rdx]
	mov	QWORD PTR [r9+rdx], rcx
	mov	rdx, r8
	and	rdx, -8
	add	r10, rdx
	add	r11, rdx
	sub	rax, rdx
	and	r8d, 7
	je	.L517
.L526:
	movzx	edx, BYTE PTR [r11]
	mov	BYTE PTR [r10], dl
	cmp	rax, 1
	je	.L517
	movzx	edx, BYTE PTR 1[r11]
	mov	BYTE PTR 1[r10], dl
	cmp	rax, 2
	je	.L517
	movzx	edx, BYTE PTR 2[r11]
	mov	BYTE PTR 2[r10], dl
	cmp	rax, 3
	je	.L517
	movzx	edx, BYTE PTR 3[r11]
	mov	BYTE PTR 3[r10], dl
	cmp	rax, 4
	je	.L517
	movzx	edx, BYTE PTR 4[r11]
	mov	BYTE PTR 4[r10], dl
	cmp	rax, 5
	je	.L517
	movzx	edx, BYTE PTR 5[r11]
	mov	BYTE PTR 5[r10], dl
	cmp	rax, 6
	je	.L517
	movzx	eax, BYTE PTR 6[r11]
	mov	BYTE PTR 6[r10], al
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L531:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L528:
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [r9+rax], dl
	add	rax, 1
	cmp	r8, rax
	jne	.L528
	pop	rbx
	ret
.L532:
	mov	r10, r9
	mov	r11, rcx
	mov	rax, r8
	xor	edx, edx
	jmp	.L522
	.seh_endproc
	.p2align 4
	.globl	rotl64
	.def	rotl64;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl64
rotl64:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, edx
	rol	rax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotr64
	.def	rotr64;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr64
rotr64:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, edx
	ror	rax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotl32
	.def	rotl32;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl32
rotl32:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	rol	eax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotr32
	.def	rotr32;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr32
rotr32:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	ror	eax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotl_sz
	.def	rotl_sz;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl_sz
rotl_sz:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, edx
	rol	rax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotr_sz
	.def	rotr_sz;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr_sz
rotr_sz:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, edx
	ror	rax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotl16
	.def	rotl16;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl16
rotl16:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	rol	ax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotr16
	.def	rotr16;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr16
rotr16:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	ror	ax, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotl8
	.def	rotl8;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl8
rotl8:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	rol	al, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	rotr8
	.def	rotr8;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr8
rotr8:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	ror	al, cl
	ret
	.seh_endproc
	.p2align 4
	.globl	bswap_16
	.def	bswap_16;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_16
bswap_16:
	.seh_endprologue
	mov	eax, ecx
	rol	ax, 8
	ret
	.seh_endproc
	.p2align 4
	.globl	bswap_32
	.def	bswap_32;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_32
bswap_32:
	.seh_endprologue
	mov	eax, ecx
	bswap	eax
	ret
	.seh_endproc
	.p2align 4
	.globl	bswap_64
	.def	bswap_64;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_64
bswap_64:
	.seh_endprologue
	mov	rax, rcx
	bswap	rax
	ret
	.seh_endproc
	.p2align 4
	.globl	ffs
	.def	ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	ffs
ffs:
	.seh_endprologue
	mov	edx, ecx
	xor	ecx, ecx
	jmp	.L579
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L577:
	cmp	ecx, 32
	je	.L581
.L579:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L577
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L581:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	.seh_endprologue
	xor	eax, eax
	test	ecx, ecx
	je	.L582
	mov	eax, ecx
	and	eax, 1
	jne	.L582
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L584:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L584
.L582:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinff
	.def	gl_isinff;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinff
gl_isinff:
	.seh_endprologue
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinfd
	.def	gl_isinfd;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfd
gl_isinfd:
	.seh_endprologue
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinfl
	.def	gl_isinfl;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfl
gl_isinfl:
	.seh_endprologue
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	_Qp_itoq
	.def	_Qp_itoq;	.scl	2;	.type	32;	.endef
	.seh_proc	_Qp_itoq
_Qp_itoq:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, edx
	movsd	QWORD PTR 8[rsp], xmm0
	fld	QWORD PTR 8[rsp]
	fstp	TBYTE PTR [rcx]
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	ldexpf
	.def	ldexpf;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpf
ldexpf:
	.seh_endprologue
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	comiss	xmm1, xmm0
	je	.L594
	movss	xmm1, DWORD PTR .LC7[rip]
	test	edx, edx
	js	.L608
	test	dl, 1
	je	.L597
	.p2align 4
	.p2align 3
.L598:
	mulss	xmm0, xmm1
.L597:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L594
	mulss	xmm1, xmm1
	test	dl, 1
	jne	.L598
.L609:
	mulss	xmm1, xmm1
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L598
	jmp	.L609
	.p2align 4,,10
	.p2align 3
.L594:
	ret
	.p2align 4,,10
	.p2align 3
.L608:
	movss	xmm1, DWORD PTR .LC8[rip]
	test	dl, 1
	je	.L597
	jmp	.L598
	.seh_endproc
	.p2align 4
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	comisd	xmm1, xmm0
	je	.L611
	movsd	xmm1, QWORD PTR .LC9[rip]
	test	edx, edx
	js	.L625
	test	dl, 1
	je	.L614
	.p2align 4
	.p2align 3
.L615:
	mulsd	xmm0, xmm1
.L614:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L611
	mulsd	xmm1, xmm1
	test	dl, 1
	jne	.L615
.L626:
	mulsd	xmm1, xmm1
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L615
	jmp	.L626
	.p2align 4,,10
	.p2align 3
.L611:
	ret
	.p2align 4,,10
	.p2align 3
.L625:
	movsd	xmm1, QWORD PTR .LC10[rip]
	test	dl, 1
	je	.L614
	jmp	.L615
	.seh_endproc
	.p2align 4
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	.seh_endprologue
	fld	TBYTE PTR [rdx]
	fld	st(0)
	fadd	st, st(1)
	mov	rax, rcx
	fcomip	st, st(1)
	je	.L628
	fld	DWORD PTR .LC7[rip]
	test	r8d, r8d
	js	.L642
	test	r8b, 1
	je	.L631
	.p2align 4
	.p2align 3
.L632:
	fmul	st(1), st
.L631:
	mov	edx, r8d
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	je	.L644
	fmul	st, st(0)
	test	r8b, 1
	jne	.L632
.L643:
	mov	edx, r8d
	fmul	st, st(0)
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	test	r8b, 1
	jne	.L632
	jmp	.L643
	.p2align 4,,10
	.p2align 3
.L644:
	fstp	st(0)
.L628:
	fstp	TBYTE PTR [rax]
	ret
	.p2align 4,,10
	.p2align 3
.L642:
	fstp	st(0)
	fld	DWORD PTR .LC8[rip]
	test	r8b, 1
	je	.L631
	jmp	.L632
	.seh_endproc
	.p2align 4
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	test	r8, r8
	je	.L646
	lea	rax, -1[r8]
	cmp	rax, 14
	jbe	.L652
	mov	r9, r8
	xor	eax, eax
	and	r9, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L648:
	movdqu	xmm2, XMMWORD PTR [rcx+rax]
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	pxor	xmm0, xmm2
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r9
	jne	.L648
	mov	r11, r8
	lea	rax, [rcx+r9]
	lea	r10, [rdx+r9]
	sub	r11, r9
	cmp	r8, r9
	je	.L646
.L647:
	sub	r8, r9
	lea	rbx, -1[r8]
	cmp	rbx, 6
	jbe	.L650
	lea	rbx, [rcx+r9]
	movq	xmm0, QWORD PTR [rdx+r9]
	mov	rdx, r8
	movq	xmm1, QWORD PTR [rbx]
	and	rdx, -8
	add	rax, rdx
	add	r10, rdx
	sub	r11, rdx
	and	r8d, 7
	pxor	xmm0, xmm1
	movq	QWORD PTR [rbx], xmm0
	je	.L646
.L650:
	movzx	edx, BYTE PTR [r10]
	xor	BYTE PTR [rax], dl
	cmp	r11, 1
	je	.L646
	movzx	edx, BYTE PTR 1[r10]
	xor	BYTE PTR 1[rax], dl
	cmp	r11, 2
	je	.L646
	movzx	edx, BYTE PTR 2[r10]
	xor	BYTE PTR 2[rax], dl
	cmp	r11, 3
	je	.L646
	movzx	edx, BYTE PTR 3[r10]
	xor	BYTE PTR 3[rax], dl
	cmp	r11, 4
	je	.L646
	movzx	edx, BYTE PTR 4[r10]
	xor	BYTE PTR 4[rax], dl
	cmp	r11, 5
	je	.L646
	movzx	edx, BYTE PTR 5[r10]
	xor	BYTE PTR 5[rax], dl
	cmp	r11, 6
	je	.L646
	movzx	edx, BYTE PTR 6[r10]
	xor	BYTE PTR 6[rax], dl
.L646:
	mov	rax, rcx
	pop	rbx
	ret
.L652:
	mov	rax, rcx
	mov	r10, rdx
	mov	r11, r8
	xor	r9d, r9d
	jmp	.L647
	.seh_endproc
	.p2align 4
	.globl	strncat
	.def	strncat;	.scl	2;	.type	32;	.endef
	.seh_proc	strncat
strncat:
	.seh_endprologue
	cmp	BYTE PTR [rcx], 0
	mov	rax, rcx
	mov	r9, rcx
	je	.L679
	.p2align 4
	.p2align 4
	.p2align 3
.L680:
	add	r9, 1
	cmp	BYTE PTR [r9], 0
	jne	.L680
.L679:
	test	r8, r8
	jne	.L681
	jmp	.L682
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L683:
	add	rdx, 1
	add	r9, 1
	sub	r8, 1
	je	.L682
.L681:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [r9], r10b
	test	r10b, r10b
	jne	.L683
	ret
	.p2align 4,,10
	.p2align 3
.L682:
	mov	BYTE PTR [r9], 0
	ret
	.seh_endproc
	.p2align 4
	.globl	strnlen
	.def	strnlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strnlen
strnlen:
	.seh_endprologue
	xor	eax, eax
	test	rdx, rdx
	je	.L691
.L692:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L694
.L691:
	ret
	.p2align 4,,10
	.p2align 3
.L694:
	add	rax, 1
	cmp	rdx, rax
	jne	.L692
	ret
	.seh_endproc
	.p2align 4
	.globl	strpbrk
	.def	strpbrk;	.scl	2;	.type	32;	.endef
	.seh_proc	strpbrk
strpbrk:
	.seh_endprologue
	movzx	r10d, BYTE PTR [rcx]
	mov	rax, rcx
	test	r10b, r10b
	je	.L704
.L700:
	mov	r8, rdx
	jmp	.L703
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L702:
	add	r8, 1
	cmp	r9b, r10b
	je	.L701
.L703:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	jne	.L702
	movzx	r10d, BYTE PTR 1[rax]
	add	rax, 1
	test	r10b, r10b
	jne	.L700
.L704:
	xor	eax, eax
.L701:
	ret
	.seh_endproc
	.p2align 4
	.globl	strrchr
	.def	strrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strrchr
strrchr:
	.seh_endprologue
	xor	r8d, r8d
	.p2align 5
	.p2align 4
	.p2align 3
.L708:
	movsx	r9d, BYTE PTR [rcx]
	cmp	edx, r9d
	cmove	r8, rcx
	add	rcx, 1
	test	r9b, r9b
	jne	.L708
	mov	rax, r8
	ret
	.seh_endproc
	.p2align 4
	.globl	strstr
	.def	strstr;	.scl	2;	.type	32;	.endef
	.seh_proc	strstr
strstr:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rsi, rdx
	movzx	edx, BYTE PTR [rdx]
	test	dl, dl
	je	.L722
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L712:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L712
	mov	r8, rcx
	sub	rax, rsi
	je	.L710
	lea	rbx, -1[rsi+rax]
	jmp	.L719
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L733:
	add	rcx, 1
	test	al, al
	je	.L732
.L719:
	movzx	eax, BYTE PTR [rcx]
	cmp	al, dl
	jne	.L733
	mov	r8d, edx
	mov	rax, rsi
	mov	r10, rcx
	jmp	.L714
	.p2align 4,,10
	.p2align 3
.L734:
	test	r9b, r9b
	setne	r11b
	cmp	r9b, r8b
	sete	r9b
	test	r11b, r9b
	je	.L715
	movzx	r8d, BYTE PTR 1[r10]
	add	r10, 1
	add	rax, 1
	test	r8b, r8b
	je	.L715
.L714:
	movzx	r9d, BYTE PTR [rax]
	cmp	rax, rbx
	jne	.L734
.L715:
	cmp	r8b, BYTE PTR [rax]
	je	.L722
	add	rcx, 1
	jmp	.L719
	.p2align 4,,10
	.p2align 3
.L732:
	xor	r8d, r8d
.L710:
	mov	rax, r8
	pop	rbx
	pop	rsi
	ret
.L722:
	mov	r8, rcx
	mov	rax, r8
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.p2align 4
	.globl	copysign
	.def	copysign;	.scl	2;	.type	32;	.endef
	.seh_proc	copysign
copysign:
	.seh_endprologue
	pxor	xmm2, xmm2
	comisd	xmm2, xmm0
	jbe	.L740
	comisd	xmm1, xmm2
	jbe	.L740
	xorpd	xmm0, XMMWORD PTR .LC11[rip]
.L735:
	ret
	.p2align 4,,10
	.p2align 3
.L740:
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L735
	comisd	xmm2, xmm1
	jbe	.L735
	xorpd	xmm0, XMMWORD PTR .LC11[rip]
	jmp	.L735
	.seh_endproc
	.p2align 4
	.globl	memmem
	.def	memmem;	.scl	2;	.type	32;	.endef
	.seh_proc	memmem
memmem:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rax, rcx
	test	r9, r9
	je	.L750
	cmp	rdx, r9
	jb	.L761
	sub	rdx, r9
	add	rdx, rcx
	jc	.L761
	movzx	r11d, BYTE PTR [r8]
	jmp	.L756
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L760:
	mov	rax, rcx
.L752:
	cmp	rdx, rax
	jb	.L761
.L756:
	lea	rcx, 1[rax]
	cmp	BYTE PTR [rax], r11b
	jne	.L760
	cmp	r9, 1
	je	.L750
.L755:
	mov	r10d, 1
	jmp	.L753
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L754:
	add	r10, 1
	cmp	r9, r10
	je	.L750
.L753:
	movzx	ebx, BYTE PTR [r8+r10]
	cmp	BYTE PTR [rax+r10], bl
	je	.L754
	cmp	rdx, rcx
	jb	.L761
	lea	rax, 1[rcx]
	cmp	r11b, BYTE PTR [rcx]
	jne	.L752
	mov	r10, rcx
	mov	rcx, rax
	mov	rax, r10
	jmp	.L755
	.p2align 4,,10
	.p2align 3
.L761:
	xor	eax, eax
.L750:
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	mempcpy
	.def	mempcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	mempcpy
mempcpy:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, r8
	test	r8, r8
	je	.L769
	call	memmove
	mov	rcx, rax
.L769:
	lea	rax, [rcx+rbx]
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	frexp
	.def	frexp;	.scl	2;	.type	32;	.endef
	.seh_proc	frexp
frexp:
	.seh_endprologue
	pxor	xmm1, xmm1
	xor	ecx, ecx
	comisd	xmm1, xmm0
	jbe	.L774
	xorpd	xmm0, XMMWORD PTR .LC11[rip]
	mov	ecx, 1
.L774:
	xor	eax, eax
	comisd	xmm0, QWORD PTR .LC12[rip]
	jb	.L798
	movsd	xmm3, QWORD PTR .LC10[rip]
	movsd	xmm2, QWORD PTR .LC9[rip]
	.p2align 5
	.p2align 4
	.p2align 3
.L778:
	movapd	xmm1, xmm0
	add	eax, 1
	mulsd	xmm0, xmm3
	comisd	xmm1, xmm2
	jnb	.L778
.L779:
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L781
	xorpd	xmm0, XMMWORD PTR .LC11[rip]
.L781:
	ret
	.p2align 4,,10
	.p2align 3
.L798:
	comisd	xmm0, QWORD PTR .LC10[rip]
	jnb	.L779
	pxor	xmm1, xmm1
	comisd	xmm0, xmm1
	je	.L779
	movsd	xmm2, QWORD PTR .LC13[rip]
	.p2align 5
	.p2align 4
	.p2align 3
.L780:
	movapd	xmm1, xmm0
	sub	eax, 1
	addsd	xmm0, xmm0
	comisd	xmm2, xmm1
	ja	.L780
	jmp	.L779
	.seh_endproc
	.p2align 4
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	xor	r8d, r8d
	test	rcx, rcx
	je	.L799
	.p2align 5
	.p2align 4
	.p2align 3
.L801:
	mov	rax, rcx
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rdx, rdx
	add	r8, rax
	shr	rcx
	jne	.L801
.L799:
	mov	rax, r8
	ret
	.seh_endproc
	.p2align 4
	.globl	udivmodsi4
	.def	udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	udivmodsi4
udivmodsi4:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jb	.L805
	jmp	.L806
	.p2align 4,,10
	.p2align 3
.L808:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L807
	test	eax, eax
	je	.L807
.L805:
	test	edx, edx
	jns	.L808
.L806:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L811:
	cmp	ecx, edx
	jb	.L810
	sub	ecx, edx
	or	r9d, eax
.L810:
	shr	edx
	shr	eax
	jne	.L811
	test	r8, r8
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L807:
	xor	r9d, r9d
	test	eax, eax
	jne	.L806
	test	r8, r8
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	__clrsbqi2
	.def	__clrsbqi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbqi2
__clrsbqi2:
	.seh_endprologue
	mov	r8d, 7
	mov	edx, ecx
	sar	dl, 7
	mov	eax, edx
	xor	eax, ecx
	cmp	cl, dl
	je	.L826
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	r8d, -1[rax]
.L826:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__clrsbdi2
	.def	__clrsbdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbdi2
__clrsbdi2:
	.seh_endprologue
	mov	r8d, 63
	mov	rdx, rcx
	mov	rax, rcx
	sar	rdx, 63
	xor	rax, rdx
	cmp	rcx, rdx
	je	.L829
	bsr	rax, rax
	xor	rax, 63
	lea	r8d, -1[rax]
.L829:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__mulsi3
	.def	__mulsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3
__mulsi3:
	.seh_endprologue
	xor	r8d, r8d
	test	ecx, ecx
	je	.L832
	.p2align 5
	.p2align 4
	.p2align 3
.L834:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L834
.L832:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmovd
	.def	__cmovd;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovd
__cmovd:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	ebx, r8d
	mov	r10d, r8d
	shr	ebx, 3
	and	r10d, -8
	cmp	rcx, rdx
	jb	.L842
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L873
.L842:
	test	ebx, ebx
	je	.L874
	lea	eax, -1[rbx]
	cmp	eax, 2
	jbe	.L844
	lea	rax, 8[rdx]
	cmp	rcx, rax
	je	.L844
	mov	r11d, r8d
	xor	eax, eax
	shr	r11d, 4
	mov	r9d, r11d
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L845:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r9
	jne	.L845
	add	r11d, r11d
	cmp	ebx, r11d
	je	.L848
	mov	rax, QWORD PTR [rdx+r11*8]
	mov	QWORD PTR [rcx+r11*8], rax
.L848:
	cmp	r10d, r8d
	jnb	.L837
	mov	esi, r8d
	mov	r9d, r10d
	sub	esi, r10d
	lea	eax, -1[rsi]
	cmp	eax, 6
	jbe	.L840
	lea	rbx, [rcx+r9]
	lea	rdi, 1[rdx+r9]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 14
	jbe	.L840
	cmp	eax, 14
	jbe	.L857
	mov	r11d, esi
	lea	rdi, [rdx+r9]
	xor	eax, eax
	shr	r11d, 4
	sal	r11, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L850:
	movdqu	xmm0, XMMWORD PTR [rdi+rax]
	movups	XMMWORD PTR [rbx+rax], xmm0
	add	rax, 16
	cmp	r11, rax
	jne	.L850
	mov	eax, esi
	and	eax, -16
	add	r10d, eax
	test	sil, 15
	je	.L837
	sub	esi, eax
	lea	r11d, -1[rsi]
	cmp	r11d, 6
	jbe	.L852
.L849:
	add	rax, r9
	mov	r9, QWORD PTR [rdx+rax]
	mov	QWORD PTR [rcx+rax], r9
	mov	eax, esi
	and	eax, -8
	add	r10d, eax
	and	esi, 7
	je	.L837
.L852:
	mov	eax, r10d
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 1[r10]
	cmp	eax, r8d
	jnb	.L837
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 2[r10]
	cmp	eax, r8d
	jnb	.L837
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 3[r10]
	cmp	eax, r8d
	jnb	.L837
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 4[r10]
	cmp	eax, r8d
	jnb	.L837
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 5[r10]
	cmp	eax, r8d
	jnb	.L837
	movzx	r9d, BYTE PTR [rdx+rax]
	add	r10d, 6
	mov	BYTE PTR [rcx+rax], r9b
	cmp	r10d, r8d
	jnb	.L837
	movzx	eax, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], al
.L837:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L873:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L837
	.p2align 4
	.p2align 4
	.p2align 3
.L856:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L856
	pop	rbx
	pop	rsi
	pop	rdi
	ret
.L857:
	xor	eax, eax
	jmp	.L849
	.p2align 4,,10
	.p2align 3
.L874:
	mov	r9d, r10d
	test	r8d, r8d
	je	.L837
.L840:
	mov	rax, r9
	.p2align 5
	.p2align 4
	.p2align 3
.L854:
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	add	rax, 1
	cmp	eax, r8d
	jb	.L854
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L844:
	lea	r11d, 0[0+rbx*8]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L847:
	mov	r9, QWORD PTR [rdx+rax]
	mov	QWORD PTR [rcx+rax], r9
	add	rax, 8
	cmp	r11, rax
	jne	.L847
	jmp	.L848
	.seh_endproc
	.p2align 4
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	.seh_endprologue
	mov	r11d, r8d
	shr	r11d
	cmp	rcx, rdx
	jb	.L879
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L903
.L879:
	test	r11d, r11d
	je	.L878
	lea	eax, -1[r11]
	cmp	eax, 2
	jbe	.L882
	lea	r10, 2[rdx]
	mov	r9, rcx
	sub	r9, r10
	cmp	r9, 12
	jbe	.L882
	cmp	eax, 6
	jbe	.L892
	mov	r9d, r8d
	xor	eax, eax
	shr	r9d, 4
	mov	r10d, r9d
	sal	r10, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L884:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r10
	jne	.L884
	lea	eax, 0[0+r9*8]
	cmp	r11d, eax
	je	.L878
	mov	r9d, r11d
	sub	r9d, eax
	lea	r10d, -1[r9]
	cmp	r10d, 2
	jbe	.L886
.L883:
	mov	r10d, eax
	movq	xmm0, QWORD PTR [rdx+r10*2]
	movq	QWORD PTR [rcx+r10*2], xmm0
	mov	r10d, r9d
	and	r10d, -4
	add	eax, r10d
	and	r9d, 3
	je	.L878
.L886:
	mov	r9d, eax
	movzx	r10d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], r10w
	lea	r9d, 1[rax]
	cmp	r9d, r11d
	jnb	.L878
	movzx	r10d, WORD PTR [rdx+r9*2]
	add	eax, 2
	mov	WORD PTR [rcx+r9*2], r10w
	cmp	eax, r11d
	jnb	.L878
	movzx	r9d, WORD PTR [rdx+rax*2]
	mov	WORD PTR [rcx+rax*2], r9w
.L878:
	test	r8b, 1
	je	.L875
.L904:
	lea	eax, -1[r8]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], dl
.L875:
	ret
	.p2align 4,,10
	.p2align 3
.L903:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L875
	.p2align 4
	.p2align 4
	.p2align 3
.L891:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L891
	ret
.L892:
	mov	r9d, r11d
	xor	eax, eax
	jmp	.L883
	.p2align 4,,10
	.p2align 3
.L882:
	lea	r10d, [r11+r11]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L888:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
	cmp	rax, r10
	jne	.L888
	test	r8b, 1
	je	.L875
	jmp	.L904
	.seh_endproc
	.p2align 4
	.globl	__cmovw
	.def	__cmovw;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovw
__cmovw:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	ebx, r8d
	mov	r10d, r8d
	shr	ebx, 2
	and	r10d, -4
	cmp	rcx, rdx
	jb	.L910
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L941
.L910:
	test	ebx, ebx
	je	.L942
	lea	eax, -1[rbx]
	cmp	eax, 2
	jbe	.L912
	lea	r9, 4[rdx]
	mov	rax, rcx
	sub	rax, r9
	cmp	rax, 8
	jbe	.L912
	mov	r11d, r8d
	xor	eax, eax
	shr	r11d, 4
	mov	r9d, r11d
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L913:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r9
	jne	.L913
	lea	eax, 0[0+r11*4]
	cmp	ebx, eax
	je	.L916
	mov	r9d, eax
	mov	r11d, DWORD PTR [rdx+r9*4]
	mov	DWORD PTR [rcx+r9*4], r11d
	lea	r9d, 1[rax]
	cmp	r9d, ebx
	jnb	.L916
	mov	r11d, DWORD PTR [rdx+r9*4]
	add	eax, 2
	mov	DWORD PTR [rcx+r9*4], r11d
	cmp	eax, ebx
	jnb	.L916
	mov	r9d, DWORD PTR [rdx+rax*4]
	mov	DWORD PTR [rcx+rax*4], r9d
.L916:
	cmp	r10d, r8d
	jnb	.L905
	mov	esi, r8d
	mov	r9d, r10d
	sub	esi, r10d
	lea	eax, -1[rsi]
	cmp	eax, 6
	jbe	.L908
	lea	rbx, [rcx+r9]
	lea	rdi, 1[rdx+r9]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 14
	jbe	.L908
	cmp	eax, 14
	jbe	.L925
	mov	r11d, esi
	lea	rdi, [rdx+r9]
	xor	eax, eax
	shr	r11d, 4
	sal	r11, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L918:
	movdqu	xmm0, XMMWORD PTR [rdi+rax]
	movups	XMMWORD PTR [rbx+rax], xmm0
	add	rax, 16
	cmp	r11, rax
	jne	.L918
	mov	eax, esi
	and	eax, -16
	add	r10d, eax
	test	sil, 15
	je	.L905
	sub	esi, eax
	lea	r11d, -1[rsi]
	cmp	r11d, 6
	jbe	.L920
.L917:
	add	rax, r9
	mov	r9, QWORD PTR [rdx+rax]
	mov	QWORD PTR [rcx+rax], r9
	mov	eax, esi
	and	eax, -8
	add	r10d, eax
	and	esi, 7
	je	.L905
.L920:
	mov	eax, r10d
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 1[r10]
	cmp	eax, r8d
	jnb	.L905
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 2[r10]
	cmp	eax, r8d
	jnb	.L905
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 3[r10]
	cmp	eax, r8d
	jnb	.L905
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 4[r10]
	cmp	eax, r8d
	jnb	.L905
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 5[r10]
	cmp	eax, r8d
	jnb	.L905
	movzx	r9d, BYTE PTR [rdx+rax]
	add	r10d, 6
	mov	BYTE PTR [rcx+rax], r9b
	cmp	r10d, r8d
	jnb	.L905
	movzx	eax, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], al
.L905:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L941:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L905
	.p2align 4
	.p2align 4
	.p2align 3
.L924:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L924
	pop	rbx
	pop	rsi
	pop	rdi
	ret
.L925:
	xor	eax, eax
	jmp	.L917
	.p2align 4,,10
	.p2align 3
.L942:
	mov	r9d, r10d
	test	r8d, r8d
	je	.L905
.L908:
	mov	rax, r9
	.p2align 5
	.p2align 4
	.p2align 3
.L922:
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	add	rax, 1
	cmp	eax, r8d
	jb	.L922
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L912:
	lea	r11d, 0[0+rbx*4]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L915:
	mov	r9d, DWORD PTR [rdx+rax]
	mov	DWORD PTR [rcx+rax], r9d
	add	rax, 4
	cmp	rax, r11
	jne	.L915
	jmp	.L916
	.seh_endproc
	.p2align 4
	.globl	__modi
	.def	__modi;	.scl	2;	.type	32;	.endef
	.seh_proc	__modi
__modi:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	cdq
	idiv	ecx
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__uitod
	.def	__uitod;	.scl	2;	.type	32;	.endef
	.seh_proc	__uitod
__uitod:
	.seh_endprologue
	pxor	xmm0, xmm0
	mov	ecx, ecx
	cvtsi2sd	xmm0, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	__uitof
	.def	__uitof;	.scl	2;	.type	32;	.endef
	.seh_proc	__uitof
__uitof:
	.seh_endprologue
	pxor	xmm0, xmm0
	mov	ecx, ecx
	cvtsi2ss	xmm0, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	__ulltod
	.def	__ulltod;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltod
__ulltod:
	.seh_endprologue
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	test	rcx, rcx
	js	.L953
	ret
	.p2align 4,,10
	.p2align 3
.L953:
	mov	rax, rcx
	and	ecx, 1
	pxor	xmm0, xmm0
	shr	rax
	or	rax, rcx
	cvtsi2sd	xmm0, rax
	addsd	xmm0, xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	__ulltof
	.def	__ulltof;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltof
__ulltof:
	.seh_endprologue
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	test	rcx, rcx
	js	.L957
	ret
	.p2align 4,,10
	.p2align 3
.L957:
	mov	rax, rcx
	and	ecx, 1
	pxor	xmm0, xmm0
	shr	rax
	or	rax, rcx
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
	ret
	.seh_endproc
	.p2align 4
	.globl	__umodi
	.def	__umodi;	.scl	2;	.type	32;	.endef
	.seh_proc	__umodi
__umodi:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	xor	edx, edx
	div	ecx
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__clzhi2
	.def	__clzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzhi2
__clzhi2:
	.seh_endprologue
	movzx	edx, cx
	test	ch, -128
	jne	.L962
	mov	eax, edx
	sar	eax, 14
	jne	.L959
	mov	eax, edx
	shr	eax, 13
	jne	.L963
	mov	eax, edx
	shr	eax, 12
	jne	.L964
	mov	eax, edx
	shr	eax, 11
	jne	.L965
	mov	eax, edx
	shr	eax, 10
	jne	.L966
	mov	eax, edx
	shr	eax, 9
	jne	.L967
	mov	eax, edx
	shr	eax, 8
	jne	.L968
	mov	eax, edx
	shr	eax, 7
	jne	.L969
	mov	eax, edx
	shr	eax, 6
	jne	.L970
	mov	eax, edx
	shr	eax, 5
	jne	.L971
	mov	eax, edx
	shr	eax, 4
	jne	.L972
	mov	eax, edx
	shr	eax, 3
	jne	.L973
	mov	eax, edx
	shr	eax, 2
	jne	.L974
	shr	edx
	jne	.L975
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
.L959:
	ret
.L962:
	xor	eax, eax
	ret
.L973:
	mov	eax, 12
	ret
.L963:
	mov	eax, 2
	ret
.L964:
	mov	eax, 3
	ret
.L965:
	mov	eax, 4
	ret
.L966:
	mov	eax, 5
	ret
.L967:
	mov	eax, 6
	ret
.L968:
	mov	eax, 7
	ret
.L969:
	mov	eax, 8
	ret
.L970:
	mov	eax, 9
	ret
.L971:
	mov	eax, 10
	ret
.L972:
	mov	eax, 11
	ret
.L974:
	mov	eax, 13
	ret
.L975:
	mov	eax, 14
	ret
	.seh_endproc
	.p2align 4
	.globl	__ctzhi2
	.def	__ctzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzhi2
__ctzhi2:
	.seh_endprologue
	test	cl, 1
	jne	.L980
	test	cl, 2
	jne	.L981
	test	cl, 4
	jne	.L982
	test	cl, 8
	jne	.L983
	test	cl, 16
	jne	.L984
	test	cl, 32
	jne	.L985
	test	cl, 64
	jne	.L986
	test	cl, -128
	jne	.L987
	test	ch, 1
	jne	.L988
	test	ch, 2
	jne	.L989
	test	ch, 4
	jne	.L990
	test	ch, 8
	jne	.L991
	test	ch, 16
	jne	.L992
	test	ch, 32
	jne	.L993
	test	ch, 64
	jne	.L994
	xor	eax, eax
	and	ch, -128
	sete	al
	add	eax, 15
	ret
.L980:
	xor	eax, eax
	ret
.L981:
	mov	eax, 1
	ret
.L992:
	mov	eax, 12
	ret
.L982:
	mov	eax, 2
	ret
.L983:
	mov	eax, 3
	ret
.L984:
	mov	eax, 4
	ret
.L985:
	mov	eax, 5
	ret
.L986:
	mov	eax, 6
	ret
.L987:
	mov	eax, 7
	ret
.L988:
	mov	eax, 8
	ret
.L989:
	mov	eax, 9
	ret
.L990:
	mov	eax, 10
	ret
.L991:
	mov	eax, 11
	ret
.L993:
	mov	eax, 13
	ret
.L994:
	mov	eax, 14
	ret
	.seh_endproc
	.p2align 4
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC14[rip]
	cvttss2si	eax, xmm0
	jnb	.L1002
	ret
	.p2align 4,,10
	.p2align 3
.L1002:
	subss	xmm0, DWORD PTR .LC14[rip]
	cvttss2si	eax, xmm0
	add	eax, 32768
	ret
	.seh_endproc
	.p2align 4
	.globl	__parityhi2
	.def	__parityhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityhi2
__parityhi2:
	.seh_endprologue
	movzx	edx, cx
	and	ecx, 1
	mov	eax, edx
	sar	eax
	and	eax, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 2
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 3
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 4
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 5
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 6
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 7
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 8
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 9
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 10
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 11
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 12
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 13
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	edx, 15
	sar	ecx, 14
	and	ecx, 1
	add	eax, ecx
	add	eax, edx
	and	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__popcounthi2
	.def	__popcounthi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcounthi2
__popcounthi2:
	.seh_endprologue
	movzx	edx, cx
	and	ecx, 1
	mov	eax, edx
	sar	eax
	and	eax, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 2
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 3
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 4
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 5
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 6
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 7
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 8
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 9
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 10
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 11
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 12
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	ecx, 13
	and	ecx, 1
	add	eax, ecx
	mov	ecx, edx
	sar	edx, 15
	sar	ecx, 14
	and	ecx, 1
	add	eax, ecx
	add	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__mulsi3_iq2000
	.def	__mulsi3_iq2000;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_iq2000
__mulsi3_iq2000:
	.seh_endprologue
	xor	r8d, r8d
	test	ecx, ecx
	je	.L1005
	.p2align 5
	.p2align 4
	.p2align 3
.L1007:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L1007
.L1005:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__mulsi3_lm32
	.def	__mulsi3_lm32;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_lm32
__mulsi3_lm32:
	.seh_endprologue
	xor	r8d, r8d
	test	ecx, ecx
	je	.L1010
	test	edx, edx
	je	.L1010
	.p2align 5
	.p2align 4
	.p2align 3
.L1012:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r8d, eax
	shr	edx
	jne	.L1012
.L1010:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jb	.L1018
	jmp	.L1019
	.p2align 4,,10
	.p2align 3
.L1021:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L1020
	test	eax, eax
	je	.L1020
.L1018:
	test	edx, edx
	jns	.L1021
.L1019:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L1024:
	cmp	ecx, edx
	jb	.L1023
	sub	ecx, edx
	or	r9d, eax
.L1023:
	shr	edx
	shr	eax
	jne	.L1024
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1020:
	xor	r9d, r9d
	test	eax, eax
	jne	.L1019
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	.seh_endprologue
	mov	eax, -1
	comiss	xmm1, xmm0
	ja	.L1039
	xor	eax, eax
	comiss	xmm0, xmm1
	seta	al
.L1039:
	ret
	.seh_endproc
	.p2align 4
	.globl	__mspabi_cmpd
	.def	__mspabi_cmpd;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpd
__mspabi_cmpd:
	.seh_endprologue
	mov	eax, -1
	comisd	xmm1, xmm0
	ja	.L1042
	xor	eax, eax
	comisd	xmm0, xmm1
	seta	al
.L1042:
	ret
	.seh_endproc
	.p2align 4
	.globl	__mspabi_mpysll
	.def	__mspabi_mpysll;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_mpysll
__mspabi_mpysll:
	.seh_endprologue
	movsx	rax, ecx
	movsx	rdx, edx
	imul	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	__mspabi_mpyull
	.def	__mspabi_mpyull;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_mpyull
__mspabi_mpyull:
	.seh_endprologue
	mov	eax, ecx
	mov	edx, edx
	imul	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	__mulhi3
	.def	__mulhi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulhi3
__mulhi3:
	.seh_endprologue
	test	edx, edx
	js	.L1056
	je	.L1052
	xor	r11d, r11d
.L1049:
	mov	r8d, 1
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L1051:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r9d, eax
	sar	edx
	setne	r10b
	cmp	r8b, 32
	setne	al
	add	r8d, 1
	test	r10b, al
	jne	.L1051
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmovne	r9d, eax
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1056:
	neg	edx
	mov	r11d, 1
	jmp	.L1049
	.p2align 4,,10
	.p2align 3
.L1052:
	xor	r9d, r9d
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	__divsi3
	.def	__divsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__divsi3
__divsi3:
	.seh_endprologue
	mov	eax, 1
	xor	r10d, r10d
	test	ecx, ecx
	jns	.L1058
	neg	ecx
	xor	eax, eax
	mov	r10d, 1
.L1058:
	test	edx, edx
	jns	.L1059
	neg	edx
	mov	r10d, eax
.L1059:
	mov	r9d, ecx
	mov	r8d, 1
	cmp	edx, ecx
	jb	.L1060
	jmp	.L1061
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1079:
	test	r8d, r8d
	je	.L1078
.L1060:
	add	edx, edx
	add	r8d, r8d
	cmp	edx, ecx
	jb	.L1079
	test	r8d, r8d
	je	.L1078
.L1061:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1066:
	cmp	r9d, edx
	jb	.L1065
	sub	r9d, edx
	or	eax, r8d
.L1065:
	shr	edx
	shr	r8d
	jne	.L1066
	mov	edx, eax
	neg	edx
	test	r10d, r10d
	cmovne	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1078:
	xor	eax, eax
	mov	edx, eax
	neg	edx
	test	r10d, r10d
	cmovne	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	.seh_endprologue
	xor	r9d, r9d
	test	ecx, ecx
	jns	.L1081
	neg	ecx
	mov	r9d, 1
.L1081:
	mov	eax, edx
	mov	r8d, 1
	neg	eax
	cmovns	edx, eax
	mov	eax, ecx
	cmp	edx, ecx
	jb	.L1082
	jmp	.L1088
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1101:
	test	r8d, r8d
	je	.L1100
.L1082:
	add	edx, edx
	add	r8d, r8d
	cmp	edx, ecx
	jb	.L1101
	test	r8d, r8d
	je	.L1100
	.p2align 4
	.p2align 4
	.p2align 3
.L1088:
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	cmovnb	eax, ecx
	shr	edx
	shr	r8d
	jne	.L1088
	mov	edx, eax
	neg	edx
	test	r9d, r9d
	cmovne	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1100:
	mov	eax, ecx
	mov	edx, eax
	neg	edx
	test	r9d, r9d
	cmovne	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__udivmodhi4
	.def	__udivmodhi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodhi4
__udivmodhi4:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r9d, 1
	mov	r11d, ecx
	mov	eax, edx
	cmp	dx, cx
	jb	.L1103
	jmp	.L1158
	.p2align 4,,10
	.p2align 3
.L1106:
	lea	r10d, [rax+rax]
	lea	edx, [r9+r9]
	cmp	r10w, r11w
	jnb	.L1105
	test	dx, dx
	je	.L1105
	mov	r9d, edx
	mov	eax, r10d
.L1103:
	test	ax, ax
	jns	.L1106
	xor	edx, edx
	cmp	cx, ax
	jb	.L1129
	mov	r11d, ecx
	mov	edx, r9d
	sub	r11d, eax
.L1129:
	mov	ecx, eax
	mov	ebx, r9d
	shr	cx
	shr	bx
	je	.L1146
.L1110:
	cmp	r11w, cx
	jb	.L1111
	sub	r11d, ecx
	or	edx, ebx
.L1111:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 2
	shr	r10w, 2
	je	.L1146
	cmp	r11w, cx
	jb	.L1112
	sub	r11d, ecx
	or	edx, r10d
.L1112:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 3
	shr	r10w, 3
	je	.L1146
	cmp	r11w, cx
	jb	.L1113
	sub	r11d, ecx
	or	edx, r10d
.L1113:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 4
	shr	r10w, 4
	je	.L1146
	cmp	r11w, cx
	jb	.L1114
	sub	r11d, ecx
	or	edx, r10d
.L1114:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 5
	shr	r10w, 5
	je	.L1146
	cmp	r11w, cx
	jb	.L1115
	sub	r11d, ecx
	or	edx, r10d
.L1115:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 6
	shr	r10w, 6
	je	.L1146
	cmp	r11w, cx
	jb	.L1116
	sub	r11d, ecx
	or	edx, r10d
.L1116:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 7
	shr	r10w, 7
	je	.L1146
	cmp	r11w, cx
	jnb	.L1159
.L1117:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 8
	shr	r10w, 8
	je	.L1146
	cmp	r11w, cx
	jnb	.L1160
.L1118:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 9
	shr	r10w, 9
	je	.L1146
	cmp	r11w, cx
	jnb	.L1161
.L1119:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 10
	shr	r10w, 10
	je	.L1146
	cmp	r11w, cx
	jnb	.L1162
.L1120:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 11
	shr	r10w, 11
	je	.L1146
	cmp	r11w, cx
	jnb	.L1163
.L1121:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 12
	shr	r10w, 12
	je	.L1146
	cmp	r11w, cx
	jb	.L1122
	sub	r11d, ecx
	or	edx, r10d
.L1122:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 13
	shr	r10w, 13
	je	.L1146
	cmp	r11w, cx
	jb	.L1123
	sub	r11d, ecx
	or	edx, r10d
.L1123:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 14
	shr	r10w, 14
	je	.L1146
	cmp	r11w, cx
	jb	.L1124
	sub	r11d, ecx
	or	edx, r10d
.L1124:
	shr	ax, 15
	test	r9w, r9w
	jns	.L1146
	xor	ebx, ebx
	cmp	r11w, ax
	jb	.L1108
	mov	ebx, r11d
	or	edx, 1
	sub	ebx, eax
	jmp	.L1108
	.p2align 4,,10
	.p2align 3
.L1146:
	mov	ebx, r11d
.L1108:
	test	r8d, r8d
	cmove	ebx, edx
	mov	eax, ebx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1105:
	mov	ebx, ecx
	test	dx, dx
	je	.L1108
	cmp	cx, r10w
	jb	.L1109
	mov	r11d, ecx
	mov	ebx, r9d
	and	ax, 32767
	mov	r9d, edx
	mov	ecx, eax
	sub	r11d, r10d
	and	bx, 32767
	mov	eax, r10d
	jmp	.L1110
	.p2align 4,,10
	.p2align 3
.L1159:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1117
	.p2align 4,,10
	.p2align 3
.L1109:
	mov	ebx, r9d
	and	ax, 32767
	mov	r9d, edx
	xor	edx, edx
	mov	ecx, eax
	and	bx, 32767
	mov	eax, r10d
	jmp	.L1110
	.p2align 4,,10
	.p2align 3
.L1160:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1118
	.p2align 4,,10
	.p2align 3
.L1161:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1119
	.p2align 4,,10
	.p2align 3
.L1162:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1120
	.p2align 4,,10
	.p2align 3
.L1163:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1121
.L1158:
	sete	dl
	mov	ebx, 0
	cmovne	ebx, ecx
	movzx	edx, dl
	jmp	.L1108
	.seh_endproc
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jb	.L1165
	jmp	.L1166
	.p2align 4,,10
	.p2align 3
.L1168:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L1167
	test	eax, eax
	je	.L1167
.L1165:
	test	edx, edx
	jns	.L1168
.L1166:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L1171:
	cmp	ecx, edx
	jb	.L1170
	sub	ecx, edx
	or	r9d, eax
.L1170:
	shr	edx
	shr	eax
	jne	.L1171
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1167:
	xor	r9d, r9d
	test	eax, eax
	jne	.L1166
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.seh_endproc
	.p2align 4
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1187
	lea	ecx, -32[rdx]
	xor	eax, eax
	sal	r8d, cl
.L1188:
	sal	r8, 32
	or	rax, r8
.L1186:
	ret
	.p2align 4,,10
	.p2align 3
.L1187:
	mov	rax, rcx
	test	edx, edx
	je	.L1186
	mov	ecx, edx
	mov	r9d, r8d
	sar	r8, 32
	sal	eax, cl
	mov	ecx, 32
	sub	ecx, edx
	shr	r9d, cl
	mov	ecx, edx
	sal	r8d, cl
	or	r8d, r9d
	jmp	.L1188
	.seh_endproc
	.p2align 4
	.globl	__ashlti3
	.def	__ashlti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashlti3
__ashlti3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	r8, QWORD PTR 8[rcx]
	test	dl, 64
	je	.L1193
	lea	ecx, -64[rdx]
	xor	r9d, r9d
	sal	rax, cl
.L1194:
	mov	rcx, rax
	mov	rax, r9
	mov	rdx, rcx
.L1195:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	r11, QWORD PTR 8[rsp]
	movq	xmm1, rdx
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], r11
	movdqa	xmm0, XMMWORD PTR [rsp]
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1193:
	test	edx, edx
	je	.L1196
	mov	r9, rax
	mov	ecx, edx
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	mov	ecx, edx
	sal	r8, cl
	or	rax, r8
	jmp	.L1194
	.p2align 4,,10
	.p2align 3
.L1196:
	mov	rdx, r8
	jmp	.L1195
	.seh_endproc
	.p2align 4
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1198
	sar	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	sar	r8d, cl
	sar	eax, 31
.L1199:
	sal	rax, 32
	or	rax, r8
.L1197:
	ret
	.p2align 4,,10
	.p2align 3
.L1198:
	mov	rax, rcx
	test	edx, edx
	je	.L1197
	mov	r9, rcx
	mov	ecx, edx
	sar	r9, 32
	mov	eax, r9d
	sar	eax, cl
	mov	ecx, 32
	sub	ecx, edx
	sal	r9d, cl
	mov	ecx, edx
	shr	r8d, cl
	or	r8d, r9d
	jmp	.L1199
	.seh_endproc
	.p2align 4
	.globl	__ashrti3
	.def	__ashrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrti3
__ashrti3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rax, QWORD PTR 8[rcx]
	test	dl, 64
	je	.L1204
	mov	r10, rax
	lea	ecx, -64[rdx]
	sar	r10, 63
	sar	rax, cl
.L1205:
	mov	rdx, rax
	mov	rax, r10
.L1206:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	rcx, QWORD PTR 8[rsp]
	movq	xmm1, rax
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1204:
	test	edx, edx
	je	.L1207
	mov	r10, rax
	mov	ecx, edx
	sar	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1205
	.p2align 4,,10
	.p2align 3
.L1207:
	mov	rdx, r8
	jmp	.L1206
	.seh_endproc
	.p2align 4
	.globl	__bswapdi2
	.def	__bswapdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapdi2
__bswapdi2:
	.seh_endprologue
	mov	rax, rcx
	bswap	rax
	ret
	.seh_endproc
	.p2align 4
	.globl	__bswapsi2
	.def	__bswapsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapsi2
__bswapsi2:
	.seh_endprologue
	mov	eax, ecx
	bswap	eax
	ret
	.seh_endproc
	.p2align 4
	.globl	__clzsi2
	.def	__clzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzsi2
__clzsi2:
	.seh_endprologue
	xor	r8d, r8d
	cmp	ecx, 65535
	mov	edx, ecx
	mov	ecx, 16
	setbe	r8b
	xor	eax, eax
	sal	r8d, 4
	sub	ecx, r8d
	shr	edx, cl
	mov	ecx, 8
	test	dh, -1
	sete	al
	sal	eax, 3
	sub	ecx, eax
	add	r8d, eax
	xor	eax, eax
	shr	edx, cl
	mov	ecx, 4
	test	dl, -16
	sete	al
	sal	eax, 2
	sub	ecx, eax
	lea	r9d, [rax+r8]
	xor	r8d, r8d
	mov	eax, 2
	shr	edx, cl
	mov	ecx, eax
	test	dl, 12
	sete	r8b
	add	r8d, r8d
	sub	ecx, r8d
	shr	edx, cl
	sub	eax, edx
	and	edx, 2
	mov	edx, 0
	cmovne	eax, edx
	add	r8d, r9d
	add	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__clzti2
	.def	__clzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzti2
__clzti2:
	.seh_endprologue
	xor	eax, eax
	mov	r8, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	test	rcx, rcx
	sete	al
	lea	edx, -1[rax]
	movsx	rdx, edx
	and	rdx, rcx
	test	rcx, rcx
	mov	ecx, 0
	cmove	rcx, r8
	or	rdx, rcx
	bsr	rdx, rdx
	sal	eax, 6
	xor	rdx, 63
	add	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmpdi2
	.def	__cmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpdi2
__cmpdi2:
	.seh_endprologue
	xor	eax, eax
	mov	r9, rcx
	mov	r8, rdx
	sar	r9, 32
	sar	r8, 32
	cmp	r9d, r8d
	jl	.L1212
	mov	eax, 2
	jg	.L1212
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1212
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1212:
	ret
	.seh_endproc
	.p2align 4
	.globl	__aeabi_lcmp
	.def	__aeabi_lcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_lcmp
__aeabi_lcmp:
	.seh_endprologue
	mov	eax, -1
	mov	r9, rcx
	mov	r8, rdx
	sar	r9, 32
	sar	r8, 32
	cmp	r9d, r8d
	jl	.L1218
	mov	eax, 1
	jg	.L1218
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1218
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1218:
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmpti2
	.def	__cmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpti2
__cmpti2:
	.seh_endprologue
	xor	eax, eax
	mov	r9, QWORD PTR [rdx]
	mov	r8, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rdx]
	cmp	QWORD PTR 8[rcx], rdx
	jl	.L1223
	mov	eax, 2
	jg	.L1223
	xor	eax, eax
	cmp	r8, r9
	jb	.L1223
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1223:
	ret
	.seh_endproc
	.p2align 4
	.globl	__ctzsi2
	.def	__ctzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzsi2
__ctzsi2:
	.seh_endprologue
	xor	edx, edx
	mov	r9d, 2
	test	cx, cx
	mov	eax, ecx
	sete	dl
	sal	edx, 4
	mov	ecx, edx
	shr	eax, cl
	xor	ecx, ecx
	test	al, al
	sete	cl
	sal	ecx, 3
	shr	eax, cl
	add	edx, ecx
	xor	ecx, ecx
	test	al, 15
	sete	cl
	sal	ecx, 2
	shr	eax, cl
	lea	r8d, [rcx+rdx]
	xor	ecx, ecx
	test	al, 3
	sete	cl
	add	ecx, ecx
	shr	eax, cl
	add	ecx, r8d
	and	eax, 3
	mov	edx, eax
	shr	eax
	not	edx
	sub	r9d, eax
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, r9d
	add	eax, ecx
	ret
	.seh_endproc
	.p2align 4
	.globl	__ctzti2
	.def	__ctzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzti2
__ctzti2:
	.seh_endprologue
	xor	eax, eax
	mov	r8, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	test	r8, r8
	cmovne	rdx, rax
	sete	al
	movzx	eax, al
	lea	ecx, -1[rax]
	sal	eax, 6
	movsx	rcx, ecx
	and	rcx, r8
	or	rdx, rcx
	rep bsf	rdx, rdx
	add	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__ffsti2
	.def	__ffsti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ffsti2
__ffsti2:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	test	rax, rax
	jne	.L1232
	xor	eax, eax
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	mov	edx, 0
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1232:
	rep bsf	rax, rax
	add	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__lshrdi3
	.def	__lshrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrdi3
__lshrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1236
	shr	r8, 32
	lea	ecx, -32[rdx]
	xor	eax, eax
	shr	r8d, cl
.L1237:
	sal	rax, 32
	or	rax, r8
.L1235:
	ret
	.p2align 4,,10
	.p2align 3
.L1236:
	mov	rax, rcx
	test	edx, edx
	je	.L1235
	mov	r9, rcx
	mov	ecx, edx
	shr	r9, 32
	mov	eax, r9d
	shr	eax, cl
	mov	ecx, 32
	sub	ecx, edx
	sal	r9d, cl
	mov	ecx, edx
	shr	r8d, cl
	or	r8d, r9d
	jmp	.L1237
	.seh_endproc
	.p2align 4
	.globl	__lshrti3
	.def	__lshrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrti3
__lshrti3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rax, QWORD PTR 8[rcx]
	test	dl, 64
	je	.L1242
	lea	ecx, -64[rdx]
	xor	r10d, r10d
	shr	rax, cl
.L1243:
	mov	rdx, rax
	mov	rax, r10
.L1244:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	rcx, QWORD PTR 8[rsp]
	movq	xmm1, rax
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.p2align 4,,10
	.p2align 3
.L1242:
	test	edx, edx
	je	.L1245
	mov	r10, rax
	mov	ecx, edx
	shr	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1243
	.p2align 4,,10
	.p2align 3
.L1245:
	mov	rdx, r8
	jmp	.L1244
	.seh_endproc
	.p2align 4
	.globl	__muldsi3
	.def	__muldsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldsi3
__muldsi3:
	.seh_endprologue
	movzx	r8d, cx
	movzx	eax, dx
	shr	ecx, 16
	mov	r9d, r8d
	shr	edx, 16
	imul	r9d, eax
	imul	eax, ecx
	imul	r8d, edx
	mov	r10d, r9d
	imul	ecx, edx
	movzx	r9d, r9w
	shr	r10d, 16
	add	eax, r10d
	movzx	r10d, ax
	shr	eax, 16
	add	r8d, r10d
	add	eax, ecx
	mov	r10d, r8d
	shr	r8d, 16
	lea	edx, [rax+r8]
	sal	r10d, 16
	sal	rdx, 32
	lea	eax, [r9+r10]
	or	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	__muldi3_compiler_rt
	.def	__muldi3_compiler_rt;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3_compiler_rt
__muldi3_compiler_rt:
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	r8, rcx
	mov	rcx, rdx
	movzx	edx, r8w
	movzx	eax, cx
	mov	r10d, r8d
	mov	r9d, edx
	shr	r10d, 16
	imul	r9d, eax
	imul	eax, r10d
	mov	r11d, r9d
	movzx	r9d, r9w
	shr	r11d, 16
	add	eax, r11d
	mov	r11d, ecx
	shr	r11d, 16
	movzx	ebx, ax
	shr	eax, 16
	imul	edx, r11d
	imul	r10d, r11d
	add	edx, ebx
	add	eax, r10d
	mov	ebx, edx
	shr	edx, 16
	add	edx, eax
	sal	ebx, 16
	mov	edx, edx
	lea	eax, [r9+rbx]
	sal	rdx, 32
	or	rax, rdx
	mov	rdx, rcx
	sar	rdx, 32
	mov	r9, rax
	mov	eax, eax
	imul	edx, r8d
	sar	r8, 32
	sar	r9, 32
	imul	ecx, r8d
	add	edx, r9d
	add	edx, ecx
	mov	edx, edx
	sal	rdx, 32
	or	rax, rdx
	pop	rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	__mulddi3
	.def	__mulddi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulddi3
__mulddi3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r8d, ecx
	mov	eax, edx
	shr	rcx, 32
	movaps	XMMWORD PTR [rsp], xmm0
	mov	r9, r8
	shr	rdx, 32
	imul	r9, rax
	imul	rax, rcx
	imul	r8, rdx
	mov	r10, r9
	imul	rcx, rdx
	mov	r9d, r9d
	shr	r10, 32
	add	rax, r10
	mov	r10d, eax
	shr	rax, 32
	add	r8, r10
	add	rax, rcx
	mov	rcx, QWORD PTR 8[rsp]
	mov	r10, r8
	shr	r8, 32
	sal	r10, 32
	mov	QWORD PTR 8[rsp], rcx
	add	rax, r8
	add	r9, r10
	movq	xmm1, rax
	mov	QWORD PTR [rsp], r9
	movdqa	xmm0, XMMWORD PTR [rsp]
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	__multi3
	.def	__multi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__multi3
__multi3:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	r9, QWORD PTR [rdx]
	mov	eax, r9d
	mov	r8, rcx
	mov	rcx, QWORD PTR [rcx]
	mov	r10, rdx
	mov	edx, ecx
	mov	rbx, rcx
	mov	r11, rdx
	shr	rbx, 32
	imul	rcx, QWORD PTR 8[r10]
	imul	r11, rax
	imul	rax, rbx
	mov	rsi, r11
	mov	r11d, r11d
	shr	rsi, 32
	add	rax, rsi
	mov	rsi, r9
	shr	rsi, 32
	imul	r9, QWORD PTR 8[r8]
	mov	edi, eax
	shr	rax, 32
	imul	rdx, rsi
	imul	rbx, rsi
	add	rdx, rdi
	mov	rdi, rdx
	add	rax, rbx
	shr	rdx, 32
	sal	rdi, 32
	add	rax, rdx
	add	r11, rdi
	mov	QWORD PTR 8[rsp], rax
	add	rcx, rax
	mov	QWORD PTR [rsp], r11
	mov	rax, QWORD PTR [rsp]
	add	rcx, r9
	mov	QWORD PTR 8[rsp], rcx
	mov	QWORD PTR [rsp], rax
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 16
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.p2align 4
	.globl	__negdi2
	.def	__negdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__negdi2
__negdi2:
	.seh_endprologue
	mov	rax, rcx
	neg	rax
	ret
	.seh_endproc
	.p2align 4
	.globl	__negti2
	.def	__negti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__negti2
__negti2:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	xor	edx, edx
	mov	rax, QWORD PTR [rcx]
	neg	rax
	sbb	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.p2align 4
	.globl	__paritydi2
	.def	__paritydi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__paritydi2
__paritydi2:
	.seh_endprologue
	mov	rax, rcx
	shr	rax, 32
	xor	eax, ecx
	mov	edx, eax
	shr	edx, 16
	xor	edx, eax
	mov	eax, edx
	shr	eax, 8
	xor	eax, edx
	mov	ecx, eax
	shr	ecx, 4
	xor	ecx, eax
	mov	eax, 27030
	and	ecx, 15
	sar	eax, cl
	and	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__parityti2
	.def	__parityti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityti2
__parityti2:
	.seh_endprologue
	mov	rdx, QWORD PTR [rcx]
	xor	rdx, QWORD PTR 8[rcx]
	mov	rax, rdx
	sar	rax, 32
	xor	eax, edx
	mov	edx, eax
	shr	edx, 16
	xor	edx, eax
	mov	eax, edx
	shr	eax, 8
	xor	eax, edx
	mov	ecx, eax
	shr	ecx, 4
	xor	ecx, eax
	mov	eax, 27030
	and	ecx, 15
	sar	eax, cl
	and	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__paritysi2
	.def	__paritysi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__paritysi2
__paritysi2:
	.seh_endprologue
	mov	edx, ecx
	shr	edx, 16
	xor	edx, ecx
	mov	eax, edx
	shr	eax, 8
	xor	eax, edx
	mov	ecx, eax
	shr	ecx, 4
	xor	ecx, eax
	mov	eax, 27030
	and	ecx, 15
	sar	eax, cl
	and	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__popcountdi2
	.def	__popcountdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountdi2
__popcountdi2:
	.seh_endprologue
	movabs	rdx, 6148914691236517205
	mov	rax, rcx
	shr	rax
	and	rax, rdx
	sub	rcx, rax
	movabs	rax, 3689348814741910323
	mov	rdx, rcx
	and	rcx, rax
	shr	rdx, 2
	and	rdx, rax
	add	rdx, rcx
	mov	rax, rdx
	shr	rax, 4
	add	rax, rdx
	movabs	rdx, 1085102592571150095
	and	rax, rdx
	mov	rdx, rax
	shr	rdx, 32
	add	eax, edx
	mov	edx, eax
	shr	edx, 16
	add	edx, eax
	mov	eax, edx
	shr	eax, 8
	add	eax, edx
	and	eax, 127
	ret
	.seh_endproc
	.p2align 4
	.globl	__popcountsi2
	.def	__popcountsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountsi2
__popcountsi2:
	.seh_endprologue
	mov	eax, ecx
	shr	eax
	and	eax, 1431655765
	sub	ecx, eax
	mov	edx, ecx
	and	ecx, 858993459
	shr	edx, 2
	and	edx, 858993459
	add	edx, ecx
	mov	eax, edx
	shr	eax, 4
	add	eax, edx
	and	eax, 252645135
	mov	edx, eax
	shr	edx, 16
	add	edx, eax
	mov	eax, edx
	shr	eax, 8
	add	eax, edx
	and	eax, 63
	ret
	.seh_endproc
	.p2align 4
	.globl	__popcountti2
	.def	__popcountti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountti2
__popcountti2:
	.seh_endprologue
	movabs	r10, 6148914691236517205
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	r8, rax
	mov	r9, rdx
	shrd	r8, rdx, 1
	shr	r9
	and	r8, r10
	and	r9, r10
	movabs	r10, 3689348814741910323
	sub	rax, r8
	sbb	rdx, r9
	mov	r8, rax
	and	rax, r10
	shrd	r8, rdx, 2
	mov	r9, rdx
	and	rdx, r10
	shr	r9, 2
	and	r8, r10
	and	r9, r10
	add	r8, rax
	adc	r9, rdx
	mov	rax, r8
	mov	rdx, r9
	shrd	rax, r9, 4
	shr	rdx, 4
	add	rax, r8
	movabs	r8, 1085102592571150095
	adc	rdx, r9
	and	rax, r8
	and	rdx, r8
	add	rdx, rax
	mov	rax, rdx
	shr	rax, 32
	add	eax, edx
	mov	edx, eax
	shr	edx, 16
	add	edx, eax
	mov	eax, edx
	shr	eax, 8
	add	eax, edx
	movzx	eax, al
	ret
	.seh_endproc
	.p2align 4
	.globl	__powidf2
	.def	__powidf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powidf2
__powidf2:
	.seh_endprologue
	movsd	xmm2, QWORD PTR .LC12[rip]
	movapd	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1259
	.p2align 4
	.p2align 3
.L1261:
	mulsd	xmm1, xmm0
.L1259:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1260
	mulsd	xmm0, xmm0
	test	al, 1
	jne	.L1261
.L1265:
	mulsd	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1261
	jmp	.L1265
	.p2align 4,,10
	.p2align 3
.L1260:
	test	edx, edx
	jns	.L1258
	divsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L1258:
	movapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	.seh_endprologue
	movss	xmm2, DWORD PTR .LC15[rip]
	movaps	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1267
	.p2align 4
	.p2align 3
.L1269:
	mulss	xmm1, xmm0
.L1267:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1268
	mulss	xmm0, xmm0
	test	al, 1
	jne	.L1269
.L1273:
	mulss	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1269
	jmp	.L1273
	.p2align 4,,10
	.p2align 3
.L1268:
	test	edx, edx
	jns	.L1266
	divss	xmm2, xmm1
	movaps	xmm1, xmm2
.L1266:
	movaps	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	__ucmpdi2
	.def	__ucmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpdi2
__ucmpdi2:
	.seh_endprologue
	xor	eax, eax
	mov	r8, rcx
	mov	r9, rdx
	shr	r8, 32
	shr	r9, 32
	cmp	r8d, r9d
	jb	.L1274
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L1274
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1274
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1274:
	ret
	.seh_endproc
	.p2align 4
	.globl	__aeabi_ulcmp
	.def	__aeabi_ulcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_ulcmp
__aeabi_ulcmp:
	.seh_endprologue
	mov	eax, -1
	mov	r8, rcx
	mov	r9, rdx
	shr	r8, 32
	shr	r9, 32
	cmp	r8d, r9d
	jb	.L1280
	mov	eax, 1
	cmp	r9d, r8d
	jb	.L1280
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1280
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1280:
	ret
	.seh_endproc
	.p2align 4
	.globl	__ucmpti2
	.def	__ucmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpti2
__ucmpti2:
	.seh_endprologue
	xor	eax, eax
	mov	r8, QWORD PTR [rcx]
	mov	r9, QWORD PTR [rdx]
	mov	rcx, QWORD PTR 8[rcx]
	mov	rdx, QWORD PTR 8[rdx]
	cmp	rcx, rdx
	jb	.L1285
	mov	eax, 2
	cmp	rdx, rcx
	jb	.L1285
	xor	eax, eax
	cmp	r8, r9
	jb	.L1285
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1285:
	ret
	.seh_endproc
.lcomm s.0,7,1
.lcomm seed,8,8
	.section .rdata,"dr"
	.align 32
digits:
	.ascii "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0"
	.align 8
.LC1:
	.word	255
	.word	255
	.word	255
	.word	255
	.set	.LC7,.LC9+4
	.align 4
.LC8:
	.long	1056964608
	.align 8
.LC9:
	.long	0
	.long	1073741824
	.align 8
.LC10:
	.long	0
	.long	1071644672
	.align 16
.LC11:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC12:
	.long	0
	.long	1072693248
	.align 8
.LC13:
	.long	0
	.long	1070596096
	.align 4
.LC14:
	.long	1191182336
	.align 4
.LC15:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
