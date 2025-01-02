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
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	movapd	xmm2, xmm0
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L189
	test	eax, eax
	je	.L188
	movapd	xmm0, xmm1
.L188:
	ret
	.p2align 4,,10
	.p2align 3
.L189:
	movapd	xmm0, xmm1
	cmplesd	xmm0, xmm2
	andpd	xmm2, xmm0
	andnpd	xmm0, xmm1
	orpd	xmm0, xmm2
	ret
	.seh_endproc
	.p2align 4
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	.seh_endprologue
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L194
	test	eax, eax
	je	.L193
	movaps	xmm0, xmm1
.L193:
	ret
	.p2align 4,,10
	.p2align 3
.L194:
	movaps	xmm2, xmm1
	cmpless	xmm2, xmm0
	andps	xmm0, xmm2
	andnps	xmm2, xmm1
	orps	xmm0, xmm2
	ret
	.seh_endproc
	.p2align 4
	.globl	fmaxl
	.def	fmaxl;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxl
fmaxl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	fxam
	fnstsw	ax
	and	edx, 512
	and	eax, 512
	cmp	edx, eax
	je	.L199
	test	edx, edx
	mov	rax, rcx
	fcmove	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L199:
	fxch	st(1)
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovb	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.seh_endproc
	.p2align 4
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	movapd	xmm2, xmm0
	and	eax, 1
	and	edx, 1
	movapd	xmm0, xmm1
	cmp	eax, edx
	je	.L205
	test	eax, eax
	je	.L204
	movapd	xmm0, xmm2
.L204:
	ret
	.p2align 4,,10
	.p2align 3
.L205:
	cmplesd	xmm0, xmm2
	andpd	xmm1, xmm0
	andnpd	xmm0, xmm2
	orpd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	.seh_endprologue
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L210
	test	eax, eax
	je	.L209
	movaps	xmm1, xmm0
.L209:
	movaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L210:
	movaps	xmm2, xmm1
	cmpless	xmm2, xmm0
	andps	xmm1, xmm2
	andnps	xmm2, xmm0
	orps	xmm1, xmm2
	movaps	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fminl
	.def	fminl;	.scl	2;	.type	32;	.endef
	.seh_proc	fminl
fminl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	fxam
	fnstsw	ax
	and	edx, 512
	and	eax, 512
	cmp	edx, eax
	je	.L215
	test	edx, edx
	mov	rax, rcx
	fcmovne	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L215:
	fxch	st(1)
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovnb	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
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
	je	.L221
	lea	r8, digits[rip]
	.p2align 5
	.p2align 4
	.p2align 3
.L222:
	mov	edx, ecx
	add	rax, 1
	and	edx, 63
	movzx	edx, BYTE PTR [r8+rdx]
	mov	BYTE PTR -1[rax], dl
	shr	ecx, 6
	jne	.L222
.L221:
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
	je	.L233
	movq	xmm0, QWORD PTR [rdx]
	movq	xmm1, rdx
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR [rcx], xmm0
	mov	QWORD PTR [rdx], rcx
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L227
	mov	QWORD PTR 8[rax], rcx
.L227:
	ret
	.p2align 4,,10
	.p2align 3
.L233:
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
	je	.L235
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L235:
	mov	rdx, QWORD PTR 8[rcx]
	test	rdx, rdx
	je	.L234
	mov	QWORD PTR [rdx], rax
.L234:
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
	je	.L244
	mov	rbx, rdx
	xor	r15d, r15d
	jmp	.L246
	.p2align 4,,10
	.p2align 3
.L258:
	add	r15, 1
	add	rbx, rsi
	cmp	rdi, r15
	je	.L244
.L246:
	mov	r12, rbx
	mov	rdx, rbx
	mov	rcx, rbp
	call	r13
	test	eax, eax
	jne	.L258
.L243:
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
.L244:
	lea	rax, 1[rdi]
	imul	rdi, rsi
	add	rdi, QWORD PTR 120[rsp]
	mov	QWORD PTR [r14], rax
	mov	r12, rdi
	test	rsi, rsi
	je	.L243
	mov	r8, rsi
	mov	rdx, rbp
	mov	rcx, rdi
	call	memmove
	jmp	.L243
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
	je	.L260
	mov	rbx, rdx
	xor	esi, esi
	jmp	.L262
	.p2align 4,,10
	.p2align 3
.L270:
	add	rsi, 1
	add	rbx, rbp
	cmp	r12, rsi
	je	.L260
.L262:
	mov	r14, rbx
	mov	rdx, rbx
	mov	rcx, rdi
	call	r13
	test	eax, eax
	jne	.L270
.L259:
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
.L260:
	xor	r14d, r14d
	jmp	.L259
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
	jmp	.L295
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L290:
	add	rcx, 1
.L295:
	movsx	edx, BYTE PTR [rcx]
	lea	r8d, -9[rdx]
	mov	eax, edx
	cmp	r8d, 4
	jbe	.L290
	cmp	al, 32
	je	.L290
	cmp	al, 43
	je	.L276
	cmp	al, 45
	jne	.L296
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L285
	mov	r11d, 1
.L279:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L282:
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
	jbe	.L282
	sub	edx, ecx
	test	r11d, r11d
	cmove	r9d, edx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L296:
	sub	edx, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	edx, 9
	jbe	.L279
.L285:
	xor	r9d, r9d
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L276:
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	xor	r11d, r11d
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L279
	jmp	.L285
	.seh_endproc
	.p2align 4
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	.seh_endprologue
	jmp	.L318
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L314:
	add	rcx, 1
.L318:
	movsx	edx, BYTE PTR [rcx]
	lea	r8d, -9[rdx]
	mov	eax, edx
	cmp	r8d, 4
	jbe	.L314
	cmp	al, 32
	je	.L314
	cmp	al, 43
	je	.L301
	cmp	al, 45
	jne	.L302
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	r11d, 1
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L309
.L303:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L306:
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
	jbe	.L306
	sub	edx, ecx
	test	r11d, r11d
	cmove	r9d, edx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L302:
	sub	edx, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	edx, 9
	jbe	.L303
.L309:
	xor	r9d, r9d
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L301:
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L309
	xor	r11d, r11d
	jmp	.L303
	.seh_endproc
	.p2align 4
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	.seh_endprologue
	jmp	.L342
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L337:
	add	rcx, 1
.L342:
	movsx	edx, BYTE PTR [rcx]
	lea	r8d, -9[rdx]
	mov	eax, edx
	cmp	r8d, 4
	jbe	.L337
	cmp	al, 32
	je	.L337
	cmp	al, 43
	je	.L323
	cmp	al, 45
	jne	.L343
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L332
	mov	r11d, 1
.L326:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L329:
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
	jbe	.L329
	sub	rdx, rcx
	test	r11d, r11d
	cmove	r9, rdx
	mov	rax, r9
	ret
	.p2align 4,,10
	.p2align 3
.L343:
	sub	edx, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	edx, 9
	jbe	.L326
.L332:
	xor	r9d, r9d
	mov	rax, r9
	ret
	.p2align 4,,10
	.p2align 3
.L323:
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	xor	r11d, r11d
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L326
	jmp	.L332
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
.L357:
	test	rbx, rbx
	je	.L345
.L358:
	mov	r14, rbx
	mov	rcx, r12
	shr	r14
	mov	rsi, r14
	imul	rsi, rdi
	add	rsi, rbp
	mov	rdx, rsi
	call	r13
	test	eax, eax
	js	.L349
	je	.L344
	sub	rbx, 1
	lea	rbp, [rsi+rdi]
	sub	rbx, r14
	test	rbx, rbx
	jne	.L358
.L345:
	xor	esi, esi
.L344:
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
.L349:
	mov	rbx, r14
	jmp	.L357
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
	je	.L364
	.p2align 4
	.p2align 3
.L360:
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
	je	.L359
	jle	.L362
	sub	r14d, 1
	lea	rdi, [rbx+rsi]
	sar	r14d
	jne	.L360
.L364:
	xor	ebx, ebx
.L359:
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
.L362:
	test	r15d, r15d
	je	.L364
	mov	r14d, r15d
	jmp	.L360
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
	jne	.L380
	jmp	.L383
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L382:
	movzx	eax, WORD PTR 2[rcx]
	add	rcx, 2
	test	ax, ax
	je	.L383
.L380:
	cmp	dx, ax
	jne	.L382
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L383:
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
	je	.L386
	jmp	.L387
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L388:
	movzx	r8d, WORD PTR [rcx+rax]
	add	rax, 2
	movzx	r9d, WORD PTR -2[rdx+rax]
	cmp	r8w, r9w
	jne	.L387
.L386:
	test	r8w, r8w
	jne	.L388
.L387:
	mov	eax, -1
	cmp	r8w, r9w
	jb	.L385
	xor	eax, eax
	cmp	r9w, r8w
	setb	al
.L385:
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
.L394:
	movzx	r9d, WORD PTR [rdx+r8]
	mov	WORD PTR [rax+r8], r9w
	add	r8, 2
	test	r9w, r9w
	jne	.L394
	ret
	.seh_endproc
	.p2align 4
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	cmp	WORD PTR [rcx], 0
	je	.L399
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L398:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L398
	sub	rax, rcx
	sar	rax
	ret
	.p2align 4,,10
	.p2align 3
.L399:
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
	jne	.L402
	jmp	.L408
	.p2align 4,,10
	.p2align 3
.L413:
	test	ax, ax
	je	.L406
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L408
.L402:
	movzx	eax, WORD PTR [rcx]
	cmp	WORD PTR [rdx], ax
	je	.L413
.L406:
	movzx	ecx, WORD PTR [rcx]
	movzx	eax, WORD PTR [rdx]
	cmp	cx, ax
	jb	.L414
	cmp	ax, cx
	setb	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L414:
	mov	eax, -1
	ret
	.p2align 4,,10
	.p2align 3
.L408:
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
	jne	.L416
	jmp	.L419
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L418:
	add	rcx, 2
	sub	r8, 1
	je	.L419
.L416:
	cmp	WORD PTR [rcx], dx
	jne	.L418
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L419:
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
	jne	.L422
	jmp	.L427
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L424:
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L427
.L422:
	movzx	eax, WORD PTR [rcx]
	cmp	ax, WORD PTR [rdx]
	je	.L424
	movzx	edx, WORD PTR [rdx]
	cmp	ax, dx
	jb	.L430
	cmp	dx, ax
	setb	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L427:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L430:
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
	je	.L432
	add	r8, r8
	call	memcpy
	mov	rcx, rax
.L432:
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
	je	.L467
	mov	rax, rcx
	lea	r10, [r8+r8]
	lea	r9, -1[r8]
	sub	rax, rdx
	cmp	rax, r10
	jb	.L438
	test	r8, r8
	je	.L467
	cmp	r9, 2
	jbe	.L457
	lea	r10, 2[rdx]
	mov	rax, rcx
	sub	rax, r10
	cmp	rax, 12
	jbe	.L457
	cmp	r9, 6
	jbe	.L458
	mov	r11, r8
	xor	eax, eax
	xor	r10d, r10d
	shr	r11, 3
	.p2align 5
	.p2align 4
	.p2align 3
.L449:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	add	r10, 1
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	r11, r10
	jne	.L449
	mov	r10, r8
	and	r10, -8
	lea	rax, [r10+r10]
	sub	r9, r10
	lea	r11, [rdx+rax]
	add	rax, rcx
	test	r8b, 7
	je	.L467
	sub	r8, r10
	lea	rbx, -1[r8]
	cmp	rbx, 2
	jbe	.L452
.L448:
	mov	rdx, QWORD PTR [rdx+r10*2]
	mov	QWORD PTR [rcx+r10*2], rdx
	mov	rdx, r8
	and	rdx, -4
	sub	r9, rdx
	add	rdx, rdx
	add	r11, rdx
	add	rax, rdx
	and	r8d, 3
	je	.L467
.L452:
	movzx	edx, WORD PTR [r11]
	mov	WORD PTR [rax], dx
	test	r9, r9
	je	.L467
	movzx	edx, WORD PTR 2[r11]
	mov	WORD PTR 2[rax], dx
	cmp	r9, 1
	je	.L467
	movzx	edx, WORD PTR 4[r11]
	mov	WORD PTR 4[rax], dx
.L467:
	mov	rax, rcx
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L438:
	test	r8, r8
	je	.L467
	cmp	r9, 2
	jbe	.L445
	mov	rax, rcx
	sub	rax, rdx
	add	rax, 6
	cmp	rax, 4
	jbe	.L445
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
.L442:
	mov	r11, QWORD PTR [rsi+rax]
	mov	QWORD PTR [r10+rax], r11
	sub	rax, 8
	cmp	rax, rbx
	jne	.L442
	mov	rax, r8
	and	rax, -4
	sub	r9, rax
	and	r8d, 3
	je	.L467
	movzx	eax, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], ax
	test	r9, r9
	je	.L467
	sub	r9, 1
	movzx	r8d, WORD PTR [rdx+r9*2]
	lea	rax, [r9+r9]
	mov	WORD PTR [rcx+r9*2], r8w
	je	.L467
	movzx	edx, WORD PTR -2[rdx+rax]
	mov	WORD PTR -2[rcx+rax], dx
	jmp	.L467
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L445:
	movzx	eax, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], ax
	sub	r9, 1
	jb	.L467
	movzx	eax, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], ax
	sub	r9, 1
	jnb	.L445
	jmp	.L467
	.p2align 4,,10
	.p2align 3
.L457:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L454:
	movzx	r9d, WORD PTR [rdx+rax*2]
	mov	WORD PTR [rcx+rax*2], r9w
	add	rax, 1
	cmp	r8, rax
	jne	.L454
	jmp	.L467
.L458:
	mov	r11, rdx
	mov	rax, rcx
	xor	r10d, r10d
	jmp	.L448
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
	je	.L490
	cmp	r11, 6
	jbe	.L496
	movd	xmm0, edx
	mov	r10, r8
	xor	eax, eax
	punpcklwd	xmm0, xmm0
	shr	r10, 3
	pshufd	xmm0, xmm0, 0
	.p2align 5
	.p2align 4
	.p2align 3
.L492:
	mov	rcx, rax
	add	rax, 1
	sal	rcx, 4
	movups	XMMWORD PTR [r9+rcx], xmm0
	cmp	r10, rax
	jne	.L492
	mov	rax, r8
	and	rax, -8
	sub	r11, rax
	lea	rcx, [r9+rax*2]
	test	r8b, 7
	je	.L490
.L491:
	sub	r8, rax
	lea	r10, -1[r8]
	cmp	r10, 2
	jbe	.L494
	movd	xmm1, edx
	pshuflw	xmm0, xmm1, 0
	movq	QWORD PTR [r9+rax*2], xmm0
	mov	rax, r8
	and	rax, -4
	sub	r11, rax
	and	r8d, 3
	lea	rcx, [rcx+rax*2]
	je	.L490
.L494:
	mov	WORD PTR [rcx], dx
	test	r11, r11
	je	.L490
	mov	WORD PTR 2[rcx], dx
	cmp	r11, 1
	je	.L490
	mov	WORD PTR 4[rcx], dx
.L490:
	mov	rax, r9
	ret
.L496:
	xor	eax, eax
	jmp	.L491
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
	jnb	.L514
	test	r8, r8
	je	.L513
	.p2align 5
	.p2align 4
	.p2align 3
.L516:
	movzx	eax, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[r9+r8], al
	sub	r8, 1
	jne	.L516
.L513:
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L514:
	je	.L513
	test	r8, r8
	je	.L513
	lea	rax, -1[r8]
	cmp	rax, 6
	jbe	.L527
	lea	r10, 1[rcx]
	sub	rdx, r10
	cmp	rdx, 14
	jbe	.L527
	cmp	rax, 14
	jbe	.L528
	mov	rdx, r8
	xor	eax, eax
	and	rdx, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L519:
	movdqu	xmm0, XMMWORD PTR [rcx+rax]
	movups	XMMWORD PTR [r9+rax], xmm0
	add	rax, 16
	cmp	rdx, rax
	jne	.L519
	mov	rax, r8
	lea	r10, [r9+rdx]
	lea	r11, [rcx+rdx]
	sub	rax, rdx
	cmp	rdx, r8
	je	.L513
	lea	rbx, -1[rax]
	mov	r8, rax
	cmp	rbx, 6
	jbe	.L522
.L518:
	mov	rcx, QWORD PTR [rcx+rdx]
	mov	QWORD PTR [r9+rdx], rcx
	mov	rdx, r8
	and	rdx, -8
	add	r10, rdx
	add	r11, rdx
	sub	rax, rdx
	and	r8d, 7
	je	.L513
.L522:
	movzx	edx, BYTE PTR [r11]
	mov	BYTE PTR [r10], dl
	cmp	rax, 1
	je	.L513
	movzx	edx, BYTE PTR 1[r11]
	mov	BYTE PTR 1[r10], dl
	cmp	rax, 2
	je	.L513
	movzx	edx, BYTE PTR 2[r11]
	mov	BYTE PTR 2[r10], dl
	cmp	rax, 3
	je	.L513
	movzx	edx, BYTE PTR 3[r11]
	mov	BYTE PTR 3[r10], dl
	cmp	rax, 4
	je	.L513
	movzx	edx, BYTE PTR 4[r11]
	mov	BYTE PTR 4[r10], dl
	cmp	rax, 5
	je	.L513
	movzx	edx, BYTE PTR 5[r11]
	mov	BYTE PTR 5[r10], dl
	cmp	rax, 6
	je	.L513
	movzx	eax, BYTE PTR 6[r11]
	mov	BYTE PTR 6[r10], al
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L527:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L524:
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [r9+rax], dl
	add	rax, 1
	cmp	r8, rax
	jne	.L524
	pop	rbx
	ret
.L528:
	mov	r10, r9
	mov	r11, rcx
	mov	rax, r8
	xor	edx, edx
	jmp	.L518
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
	jmp	.L575
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L573:
	cmp	ecx, 32
	je	.L577
.L575:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L573
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L577:
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
	je	.L578
	mov	eax, ecx
	and	eax, 1
	jne	.L578
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L580:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L580
.L578:
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
	je	.L590
	movss	xmm1, DWORD PTR .LC6[rip]
	test	edx, edx
	js	.L604
	test	dl, 1
	je	.L593
	.p2align 4
	.p2align 3
.L594:
	mulss	xmm0, xmm1
.L593:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L590
	mulss	xmm1, xmm1
	test	dl, 1
	jne	.L594
.L605:
	mulss	xmm1, xmm1
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L594
	jmp	.L605
	.p2align 4,,10
	.p2align 3
.L590:
	ret
	.p2align 4,,10
	.p2align 3
.L604:
	movss	xmm1, DWORD PTR .LC7[rip]
	test	dl, 1
	je	.L593
	jmp	.L594
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
	je	.L607
	movsd	xmm1, QWORD PTR .LC8[rip]
	test	edx, edx
	js	.L621
	test	dl, 1
	je	.L610
	.p2align 4
	.p2align 3
.L611:
	mulsd	xmm0, xmm1
.L610:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L607
	mulsd	xmm1, xmm1
	test	dl, 1
	jne	.L611
.L622:
	mulsd	xmm1, xmm1
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L611
	jmp	.L622
	.p2align 4,,10
	.p2align 3
.L607:
	ret
	.p2align 4,,10
	.p2align 3
.L621:
	movsd	xmm1, QWORD PTR .LC9[rip]
	test	dl, 1
	je	.L610
	jmp	.L611
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
	je	.L624
	test	r8d, r8d
	js	.L638
	fld	DWORD PTR .LC6[rip]
.L626:
	test	r8b, 1
	je	.L627
	.p2align 4
	.p2align 3
.L628:
	fmul	st(1), st
.L627:
	mov	edx, r8d
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	je	.L640
	fmul	st, st(0)
	test	r8b, 1
	jne	.L628
.L639:
	mov	edx, r8d
	fmul	st, st(0)
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	test	r8b, 1
	jne	.L628
	jmp	.L639
	.p2align 4,,10
	.p2align 3
.L640:
	fstp	st(0)
.L624:
	fstp	TBYTE PTR [rax]
	ret
	.p2align 4,,10
	.p2align 3
.L638:
	fld	DWORD PTR .LC7[rip]
	jmp	.L626
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
	je	.L642
	lea	rax, -1[r8]
	cmp	rax, 14
	jbe	.L648
	mov	r9, r8
	xor	eax, eax
	and	r9, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L644:
	movdqu	xmm2, XMMWORD PTR [rcx+rax]
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	pxor	xmm0, xmm2
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r9
	jne	.L644
	mov	r11, r8
	lea	rax, [rcx+r9]
	lea	r10, [rdx+r9]
	sub	r11, r9
	cmp	r8, r9
	je	.L642
.L643:
	sub	r8, r9
	lea	rbx, -1[r8]
	cmp	rbx, 6
	jbe	.L646
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
	je	.L642
.L646:
	movzx	edx, BYTE PTR [r10]
	xor	BYTE PTR [rax], dl
	cmp	r11, 1
	je	.L642
	movzx	edx, BYTE PTR 1[r10]
	xor	BYTE PTR 1[rax], dl
	cmp	r11, 2
	je	.L642
	movzx	edx, BYTE PTR 2[r10]
	xor	BYTE PTR 2[rax], dl
	cmp	r11, 3
	je	.L642
	movzx	edx, BYTE PTR 3[r10]
	xor	BYTE PTR 3[rax], dl
	cmp	r11, 4
	je	.L642
	movzx	edx, BYTE PTR 4[r10]
	xor	BYTE PTR 4[rax], dl
	cmp	r11, 5
	je	.L642
	movzx	edx, BYTE PTR 5[r10]
	xor	BYTE PTR 5[rax], dl
	cmp	r11, 6
	je	.L642
	movzx	edx, BYTE PTR 6[r10]
	xor	BYTE PTR 6[rax], dl
.L642:
	mov	rax, rcx
	pop	rbx
	ret
.L648:
	mov	rax, rcx
	mov	r10, rdx
	mov	r11, r8
	xor	r9d, r9d
	jmp	.L643
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
	je	.L675
	.p2align 4
	.p2align 4
	.p2align 3
.L676:
	add	r9, 1
	cmp	BYTE PTR [r9], 0
	jne	.L676
.L675:
	test	r8, r8
	jne	.L677
	jmp	.L678
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L679:
	add	rdx, 1
	add	r9, 1
	sub	r8, 1
	je	.L678
.L677:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [r9], r10b
	test	r10b, r10b
	jne	.L679
	ret
	.p2align 4,,10
	.p2align 3
.L678:
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
	je	.L687
.L688:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L690
.L687:
	ret
	.p2align 4,,10
	.p2align 3
.L690:
	add	rax, 1
	cmp	rdx, rax
	jne	.L688
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
	je	.L700
.L696:
	mov	r8, rdx
	jmp	.L699
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L698:
	add	r8, 1
	cmp	r9b, r10b
	je	.L697
.L699:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	jne	.L698
	movzx	r10d, BYTE PTR 1[rax]
	add	rax, 1
	test	r10b, r10b
	jne	.L696
.L700:
	xor	eax, eax
.L697:
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
.L704:
	movsx	r9d, BYTE PTR [rcx]
	cmp	edx, r9d
	cmove	r8, rcx
	add	rcx, 1
	test	r9b, r9b
	jne	.L704
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
	je	.L718
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L708:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L708
	mov	r8, rcx
	sub	rax, rsi
	je	.L706
	lea	rbx, -1[rsi+rax]
	jmp	.L715
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L729:
	add	rcx, 1
	test	al, al
	je	.L728
.L715:
	movzx	eax, BYTE PTR [rcx]
	cmp	al, dl
	jne	.L729
	mov	r8d, edx
	mov	rax, rsi
	mov	r10, rcx
	jmp	.L710
	.p2align 4,,10
	.p2align 3
.L730:
	test	r9b, r9b
	setne	r11b
	cmp	r9b, r8b
	sete	r9b
	test	r11b, r9b
	je	.L711
	movzx	r8d, BYTE PTR 1[r10]
	add	r10, 1
	add	rax, 1
	test	r8b, r8b
	je	.L711
.L710:
	movzx	r9d, BYTE PTR [rax]
	cmp	rax, rbx
	jne	.L730
.L711:
	cmp	r8b, BYTE PTR [rax]
	je	.L718
	add	rcx, 1
	jmp	.L715
	.p2align 4,,10
	.p2align 3
.L728:
	xor	r8d, r8d
.L706:
	mov	rax, r8
	pop	rbx
	pop	rsi
	ret
.L718:
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
	jbe	.L736
	comisd	xmm1, xmm2
	jbe	.L736
	xorpd	xmm0, XMMWORD PTR .LC10[rip]
.L731:
	ret
	.p2align 4,,10
	.p2align 3
.L736:
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L731
	comisd	xmm2, xmm1
	jbe	.L731
	xorpd	xmm0, XMMWORD PTR .LC10[rip]
	jmp	.L731
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
	je	.L746
	cmp	rdx, r9
	jb	.L757
	sub	rdx, r9
	add	rdx, rcx
	jc	.L757
	movzx	r11d, BYTE PTR [r8]
	jmp	.L752
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L756:
	mov	rax, rcx
.L748:
	cmp	rdx, rax
	jb	.L757
.L752:
	lea	rcx, 1[rax]
	cmp	BYTE PTR [rax], r11b
	jne	.L756
	cmp	r9, 1
	je	.L746
.L751:
	mov	r10d, 1
	jmp	.L749
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L750:
	add	r10, 1
	cmp	r9, r10
	je	.L746
.L749:
	movzx	ebx, BYTE PTR [r8+r10]
	cmp	BYTE PTR [rax+r10], bl
	je	.L750
	cmp	rdx, rcx
	jb	.L757
	lea	rax, 1[rcx]
	cmp	r11b, BYTE PTR [rcx]
	jne	.L748
	mov	r10, rcx
	mov	rcx, rax
	mov	rax, r10
	jmp	.L751
	.p2align 4,,10
	.p2align 3
.L757:
	xor	eax, eax
.L746:
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
	je	.L765
	call	memmove
	mov	rcx, rax
.L765:
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
	comisd	xmm1, xmm0
	ja	.L792
	xor	ecx, ecx
	comisd	xmm0, QWORD PTR .LC13[rip]
	jb	.L793
.L772:
	movsd	xmm3, QWORD PTR .LC9[rip]
	movsd	xmm2, QWORD PTR .LC8[rip]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L778:
	movapd	xmm1, xmm0
	add	eax, 1
	mulsd	xmm0, xmm3
	comisd	xmm1, xmm2
	jnb	.L778
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L769
.L795:
	xorpd	xmm0, XMMWORD PTR .LC10[rip]
.L769:
	ret
	.p2align 4,,10
	.p2align 3
.L793:
	movsd	xmm2, QWORD PTR .LC9[rip]
	comisd	xmm2, xmm0
	jbe	.L775
	comisd	xmm0, xmm1
	jne	.L784
.L775:
	mov	DWORD PTR [rdx], 0
	ret
	.p2align 4,,10
	.p2align 3
.L792:
	movsd	xmm1, QWORD PTR .LC11[rip]
	movapd	xmm2, xmm0
	xorpd	xmm2, XMMWORD PTR .LC10[rip]
	comisd	xmm1, xmm0
	jb	.L794
	movapd	xmm0, xmm2
	mov	ecx, 1
	jmp	.L772
	.p2align 4,,10
	.p2align 3
.L794:
	comisd	xmm0, QWORD PTR .LC12[rip]
	jbe	.L775
	mov	ecx, 1
.L773:
	movapd	xmm0, xmm2
	movsd	xmm2, QWORD PTR .LC14[rip]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L780:
	movapd	xmm1, xmm0
	sub	eax, 1
	addsd	xmm0, xmm0
	comisd	xmm2, xmm1
	ja	.L780
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	jne	.L795
	jmp	.L769
.L784:
	movapd	xmm2, xmm0
	jmp	.L773
	.seh_endproc
	.p2align 4
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	xor	r8d, r8d
	test	rcx, rcx
	je	.L796
	.p2align 5
	.p2align 4
	.p2align 3
.L798:
	mov	rax, rcx
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rdx, rdx
	add	r8, rax
	shr	rcx
	jne	.L798
.L796:
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
	jb	.L802
	jmp	.L803
	.p2align 4,,10
	.p2align 3
.L805:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L804
	test	eax, eax
	je	.L804
.L802:
	test	edx, edx
	jns	.L805
.L803:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L808:
	cmp	ecx, edx
	jb	.L807
	sub	ecx, edx
	or	r9d, eax
.L807:
	shr	edx
	shr	eax
	jne	.L808
	test	r8, r8
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L804:
	xor	r9d, r9d
	test	eax, eax
	jne	.L803
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
	je	.L823
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	r8d, -1[rax]
.L823:
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
	je	.L826
	bsr	rax, rax
	xor	rax, 63
	lea	r8d, -1[rax]
.L826:
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
	je	.L829
	.p2align 5
	.p2align 4
	.p2align 3
.L831:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L831
.L829:
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
	jb	.L839
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L870
.L839:
	test	ebx, ebx
	je	.L871
	lea	eax, -1[rbx]
	cmp	eax, 2
	jbe	.L841
	lea	rax, 8[rdx]
	cmp	rcx, rax
	je	.L841
	mov	r11d, r8d
	xor	eax, eax
	shr	r11d, 4
	mov	r9d, r11d
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L842:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r9
	jne	.L842
	add	r11d, r11d
	cmp	ebx, r11d
	je	.L845
	mov	rax, QWORD PTR [rdx+r11*8]
	mov	QWORD PTR [rcx+r11*8], rax
.L845:
	cmp	r10d, r8d
	jnb	.L834
	mov	esi, r8d
	mov	r9d, r10d
	sub	esi, r10d
	lea	eax, -1[rsi]
	cmp	eax, 6
	jbe	.L837
	lea	rbx, [rcx+r9]
	lea	rdi, 1[rdx+r9]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 14
	jbe	.L837
	cmp	eax, 14
	jbe	.L854
	mov	r11d, esi
	lea	rdi, [rdx+r9]
	xor	eax, eax
	shr	r11d, 4
	sal	r11, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L847:
	movdqu	xmm0, XMMWORD PTR [rdi+rax]
	movups	XMMWORD PTR [rbx+rax], xmm0
	add	rax, 16
	cmp	r11, rax
	jne	.L847
	mov	eax, esi
	and	eax, -16
	add	r10d, eax
	test	sil, 15
	je	.L834
	sub	esi, eax
	lea	r11d, -1[rsi]
	cmp	r11d, 6
	jbe	.L849
.L846:
	add	rax, r9
	mov	r9, QWORD PTR [rdx+rax]
	mov	QWORD PTR [rcx+rax], r9
	mov	eax, esi
	and	eax, -8
	add	r10d, eax
	and	esi, 7
	je	.L834
.L849:
	mov	eax, r10d
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 1[r10]
	cmp	eax, r8d
	jnb	.L834
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 2[r10]
	cmp	eax, r8d
	jnb	.L834
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 3[r10]
	cmp	eax, r8d
	jnb	.L834
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 4[r10]
	cmp	eax, r8d
	jnb	.L834
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 5[r10]
	cmp	eax, r8d
	jnb	.L834
	movzx	r9d, BYTE PTR [rdx+rax]
	add	r10d, 6
	mov	BYTE PTR [rcx+rax], r9b
	cmp	r10d, r8d
	jnb	.L834
	movzx	eax, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], al
.L834:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L870:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L834
	.p2align 4
	.p2align 4
	.p2align 3
.L853:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L853
	pop	rbx
	pop	rsi
	pop	rdi
	ret
.L854:
	xor	eax, eax
	jmp	.L846
	.p2align 4,,10
	.p2align 3
.L871:
	mov	r9d, r10d
	test	r8d, r8d
	je	.L834
.L837:
	mov	rax, r9
	.p2align 5
	.p2align 4
	.p2align 3
.L851:
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	add	rax, 1
	cmp	eax, r8d
	jb	.L851
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L841:
	lea	r11d, 0[0+rbx*8]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L844:
	mov	r9, QWORD PTR [rdx+rax]
	mov	QWORD PTR [rcx+rax], r9
	add	rax, 8
	cmp	r11, rax
	jne	.L844
	jmp	.L845
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
	jb	.L876
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L900
.L876:
	test	r11d, r11d
	je	.L875
	lea	eax, -1[r11]
	cmp	eax, 2
	jbe	.L879
	lea	r10, 2[rdx]
	mov	r9, rcx
	sub	r9, r10
	cmp	r9, 12
	jbe	.L879
	cmp	eax, 6
	jbe	.L889
	mov	r9d, r8d
	xor	eax, eax
	shr	r9d, 4
	mov	r10d, r9d
	sal	r10, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L881:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r10
	jne	.L881
	lea	eax, 0[0+r9*8]
	cmp	r11d, eax
	je	.L875
	mov	r9d, r11d
	sub	r9d, eax
	lea	r10d, -1[r9]
	cmp	r10d, 2
	jbe	.L883
.L880:
	mov	r10d, eax
	movq	xmm0, QWORD PTR [rdx+r10*2]
	movq	QWORD PTR [rcx+r10*2], xmm0
	mov	r10d, r9d
	and	r10d, -4
	add	eax, r10d
	and	r9d, 3
	je	.L875
.L883:
	mov	r9d, eax
	movzx	r10d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], r10w
	lea	r9d, 1[rax]
	cmp	r9d, r11d
	jnb	.L875
	movzx	r10d, WORD PTR [rdx+r9*2]
	add	eax, 2
	mov	WORD PTR [rcx+r9*2], r10w
	cmp	eax, r11d
	jnb	.L875
	movzx	r9d, WORD PTR [rdx+rax*2]
	mov	WORD PTR [rcx+rax*2], r9w
.L875:
	test	r8b, 1
	je	.L872
.L901:
	lea	eax, -1[r8]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], dl
.L872:
	ret
	.p2align 4,,10
	.p2align 3
.L900:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L872
	.p2align 4
	.p2align 4
	.p2align 3
.L888:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L888
	ret
.L889:
	mov	r9d, r11d
	xor	eax, eax
	jmp	.L880
	.p2align 4,,10
	.p2align 3
.L879:
	lea	r10d, [r11+r11]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L885:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
	cmp	rax, r10
	jne	.L885
	test	r8b, 1
	je	.L872
	jmp	.L901
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
	jb	.L907
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L938
.L907:
	test	ebx, ebx
	je	.L939
	lea	eax, -1[rbx]
	cmp	eax, 2
	jbe	.L909
	lea	r9, 4[rdx]
	mov	rax, rcx
	sub	rax, r9
	cmp	rax, 8
	jbe	.L909
	mov	r11d, r8d
	xor	eax, eax
	shr	r11d, 4
	mov	r9d, r11d
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L910:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r9
	jne	.L910
	lea	eax, 0[0+r11*4]
	cmp	ebx, eax
	je	.L913
	mov	r9d, eax
	mov	r11d, DWORD PTR [rdx+r9*4]
	mov	DWORD PTR [rcx+r9*4], r11d
	lea	r9d, 1[rax]
	cmp	r9d, ebx
	jnb	.L913
	mov	r11d, DWORD PTR [rdx+r9*4]
	add	eax, 2
	mov	DWORD PTR [rcx+r9*4], r11d
	cmp	eax, ebx
	jnb	.L913
	mov	r9d, DWORD PTR [rdx+rax*4]
	mov	DWORD PTR [rcx+rax*4], r9d
.L913:
	cmp	r10d, r8d
	jnb	.L902
	mov	esi, r8d
	mov	r9d, r10d
	sub	esi, r10d
	lea	eax, -1[rsi]
	cmp	eax, 6
	jbe	.L905
	lea	rbx, [rcx+r9]
	lea	rdi, 1[rdx+r9]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 14
	jbe	.L905
	cmp	eax, 14
	jbe	.L922
	mov	r11d, esi
	lea	rdi, [rdx+r9]
	xor	eax, eax
	shr	r11d, 4
	sal	r11, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L915:
	movdqu	xmm0, XMMWORD PTR [rdi+rax]
	movups	XMMWORD PTR [rbx+rax], xmm0
	add	rax, 16
	cmp	r11, rax
	jne	.L915
	mov	eax, esi
	and	eax, -16
	add	r10d, eax
	test	sil, 15
	je	.L902
	sub	esi, eax
	lea	r11d, -1[rsi]
	cmp	r11d, 6
	jbe	.L917
.L914:
	add	rax, r9
	mov	r9, QWORD PTR [rdx+rax]
	mov	QWORD PTR [rcx+rax], r9
	mov	eax, esi
	and	eax, -8
	add	r10d, eax
	and	esi, 7
	je	.L902
.L917:
	mov	eax, r10d
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 1[r10]
	cmp	eax, r8d
	jnb	.L902
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 2[r10]
	cmp	eax, r8d
	jnb	.L902
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 3[r10]
	cmp	eax, r8d
	jnb	.L902
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 4[r10]
	cmp	eax, r8d
	jnb	.L902
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 5[r10]
	cmp	eax, r8d
	jnb	.L902
	movzx	r9d, BYTE PTR [rdx+rax]
	add	r10d, 6
	mov	BYTE PTR [rcx+rax], r9b
	cmp	r10d, r8d
	jnb	.L902
	movzx	eax, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], al
.L902:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L938:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L902
	.p2align 4
	.p2align 4
	.p2align 3
.L921:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L921
	pop	rbx
	pop	rsi
	pop	rdi
	ret
.L922:
	xor	eax, eax
	jmp	.L914
	.p2align 4,,10
	.p2align 3
.L939:
	mov	r9d, r10d
	test	r8d, r8d
	je	.L902
.L905:
	mov	rax, r9
	.p2align 5
	.p2align 4
	.p2align 3
.L919:
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	add	rax, 1
	cmp	eax, r8d
	jb	.L919
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L909:
	lea	r11d, 0[0+rbx*4]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L912:
	mov	r9d, DWORD PTR [rdx+rax]
	mov	DWORD PTR [rcx+rax], r9d
	add	rax, 4
	cmp	rax, r11
	jne	.L912
	jmp	.L913
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
	test	rcx, rcx
	js	.L948
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L948:
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
	test	rcx, rcx
	js	.L951
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L951:
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
	jne	.L957
	mov	eax, edx
	sar	eax, 14
	jne	.L954
	mov	eax, edx
	shr	eax, 13
	jne	.L958
	mov	eax, edx
	shr	eax, 12
	jne	.L959
	mov	eax, edx
	shr	eax, 11
	jne	.L960
	mov	eax, edx
	shr	eax, 10
	jne	.L961
	mov	eax, edx
	shr	eax, 9
	jne	.L962
	mov	eax, edx
	shr	eax, 8
	jne	.L963
	mov	eax, edx
	shr	eax, 7
	jne	.L964
	mov	eax, edx
	shr	eax, 6
	jne	.L965
	mov	eax, edx
	shr	eax, 5
	jne	.L966
	mov	eax, edx
	shr	eax, 4
	jne	.L967
	mov	eax, edx
	shr	eax, 3
	jne	.L968
	mov	eax, edx
	shr	eax, 2
	jne	.L969
	shr	edx
	jne	.L970
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
.L954:
	ret
.L957:
	xor	eax, eax
	ret
.L968:
	mov	eax, 12
	ret
.L958:
	mov	eax, 2
	ret
.L959:
	mov	eax, 3
	ret
.L960:
	mov	eax, 4
	ret
.L961:
	mov	eax, 5
	ret
.L962:
	mov	eax, 6
	ret
.L963:
	mov	eax, 7
	ret
.L964:
	mov	eax, 8
	ret
.L965:
	mov	eax, 9
	ret
.L966:
	mov	eax, 10
	ret
.L967:
	mov	eax, 11
	ret
.L969:
	mov	eax, 13
	ret
.L970:
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
	jne	.L975
	test	cl, 2
	jne	.L976
	test	cl, 4
	jne	.L977
	test	cl, 8
	jne	.L978
	test	cl, 16
	jne	.L979
	test	cl, 32
	jne	.L980
	test	cl, 64
	jne	.L981
	test	cl, -128
	jne	.L982
	test	ch, 1
	jne	.L983
	test	ch, 2
	jne	.L984
	test	ch, 4
	jne	.L985
	test	ch, 8
	jne	.L986
	test	ch, 16
	jne	.L987
	test	ch, 32
	jne	.L988
	test	ch, 64
	jne	.L989
	xor	eax, eax
	and	ch, -128
	sete	al
	add	eax, 15
	ret
.L975:
	xor	eax, eax
	ret
.L976:
	mov	eax, 1
	ret
.L987:
	mov	eax, 12
	ret
.L977:
	mov	eax, 2
	ret
.L978:
	mov	eax, 3
	ret
.L979:
	mov	eax, 4
	ret
.L980:
	mov	eax, 5
	ret
.L981:
	mov	eax, 6
	ret
.L982:
	mov	eax, 7
	ret
.L983:
	mov	eax, 8
	ret
.L984:
	mov	eax, 9
	ret
.L985:
	mov	eax, 10
	ret
.L986:
	mov	eax, 11
	ret
.L988:
	mov	eax, 13
	ret
.L989:
	mov	eax, 14
	ret
	.seh_endproc
	.p2align 4
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC15[rip]
	cvttss2si	eax, xmm0
	jnb	.L997
	ret
	.p2align 4,,10
	.p2align 3
.L997:
	subss	xmm0, DWORD PTR .LC15[rip]
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
	je	.L1000
	.p2align 5
	.p2align 4
	.p2align 3
.L1002:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L1002
.L1000:
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
	je	.L1005
	test	edx, edx
	je	.L1005
	.p2align 5
	.p2align 4
	.p2align 3
.L1007:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r8d, eax
	shr	edx
	jne	.L1007
.L1005:
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
	jb	.L1013
	jmp	.L1014
	.p2align 4,,10
	.p2align 3
.L1016:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L1015
	test	eax, eax
	je	.L1015
.L1013:
	test	edx, edx
	jns	.L1016
.L1014:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L1019:
	cmp	ecx, edx
	jb	.L1018
	sub	ecx, edx
	or	r9d, eax
.L1018:
	shr	edx
	shr	eax
	jne	.L1019
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1015:
	xor	r9d, r9d
	test	eax, eax
	jne	.L1014
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
	ja	.L1034
	xor	eax, eax
	comiss	xmm0, xmm1
	seta	al
.L1034:
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
	ja	.L1037
	xor	eax, eax
	comisd	xmm0, xmm1
	seta	al
.L1037:
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
	js	.L1051
	je	.L1047
	xor	r11d, r11d
.L1044:
	mov	r8d, 1
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L1046:
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
	jne	.L1046
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmovne	r9d, eax
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1051:
	neg	edx
	mov	r11d, 1
	jmp	.L1044
	.p2align 4,,10
	.p2align 3
.L1047:
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
	jns	.L1053
	neg	ecx
	xor	eax, eax
	mov	r10d, 1
.L1053:
	test	edx, edx
	jns	.L1054
	neg	edx
	mov	r10d, eax
.L1054:
	mov	r9d, ecx
	mov	r8d, 1
	cmp	edx, ecx
	jb	.L1055
	jmp	.L1056
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1074:
	test	r8d, r8d
	je	.L1073
.L1055:
	add	edx, edx
	add	r8d, r8d
	cmp	edx, ecx
	jb	.L1074
	test	r8d, r8d
	je	.L1073
.L1056:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1061:
	cmp	r9d, edx
	jb	.L1060
	sub	r9d, edx
	or	eax, r8d
.L1060:
	shr	edx
	shr	r8d
	jne	.L1061
	mov	edx, eax
	neg	edx
	test	r10d, r10d
	cmovne	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1073:
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
	jns	.L1076
	neg	ecx
	mov	r9d, 1
.L1076:
	mov	eax, edx
	mov	r8d, 1
	neg	eax
	cmovns	edx, eax
	mov	eax, ecx
	cmp	edx, ecx
	jb	.L1077
	jmp	.L1083
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1096:
	test	r8d, r8d
	je	.L1095
.L1077:
	add	edx, edx
	add	r8d, r8d
	cmp	edx, ecx
	jb	.L1096
	test	r8d, r8d
	je	.L1095
	.p2align 4
	.p2align 4
	.p2align 3
.L1083:
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	cmovnb	eax, ecx
	shr	edx
	shr	r8d
	jne	.L1083
	mov	edx, eax
	neg	edx
	test	r9d, r9d
	cmovne	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1095:
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
	jb	.L1098
	jmp	.L1153
	.p2align 4,,10
	.p2align 3
.L1101:
	lea	r10d, [rax+rax]
	lea	edx, [r9+r9]
	cmp	r10w, r11w
	jnb	.L1100
	test	dx, dx
	je	.L1100
	mov	r9d, edx
	mov	eax, r10d
.L1098:
	test	ax, ax
	jns	.L1101
	xor	edx, edx
	cmp	cx, ax
	jb	.L1124
	mov	r11d, ecx
	mov	edx, r9d
	sub	r11d, eax
.L1124:
	mov	ecx, eax
	mov	ebx, r9d
	shr	cx
	shr	bx
	je	.L1141
.L1105:
	cmp	r11w, cx
	jb	.L1106
	sub	r11d, ecx
	or	edx, ebx
.L1106:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 2
	shr	r10w, 2
	je	.L1141
	cmp	r11w, cx
	jb	.L1107
	sub	r11d, ecx
	or	edx, r10d
.L1107:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 3
	shr	r10w, 3
	je	.L1141
	cmp	r11w, cx
	jb	.L1108
	sub	r11d, ecx
	or	edx, r10d
.L1108:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 4
	shr	r10w, 4
	je	.L1141
	cmp	r11w, cx
	jb	.L1109
	sub	r11d, ecx
	or	edx, r10d
.L1109:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 5
	shr	r10w, 5
	je	.L1141
	cmp	r11w, cx
	jb	.L1110
	sub	r11d, ecx
	or	edx, r10d
.L1110:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 6
	shr	r10w, 6
	je	.L1141
	cmp	r11w, cx
	jb	.L1111
	sub	r11d, ecx
	or	edx, r10d
.L1111:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 7
	shr	r10w, 7
	je	.L1141
	cmp	r11w, cx
	jnb	.L1154
.L1112:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 8
	shr	r10w, 8
	je	.L1141
	cmp	r11w, cx
	jnb	.L1155
.L1113:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 9
	shr	r10w, 9
	je	.L1141
	cmp	r11w, cx
	jnb	.L1156
.L1114:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 10
	shr	r10w, 10
	je	.L1141
	cmp	r11w, cx
	jnb	.L1157
.L1115:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 11
	shr	r10w, 11
	je	.L1141
	cmp	r11w, cx
	jnb	.L1158
.L1116:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 12
	shr	r10w, 12
	je	.L1141
	cmp	r11w, cx
	jb	.L1117
	sub	r11d, ecx
	or	edx, r10d
.L1117:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 13
	shr	r10w, 13
	je	.L1141
	cmp	r11w, cx
	jb	.L1118
	sub	r11d, ecx
	or	edx, r10d
.L1118:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 14
	shr	r10w, 14
	je	.L1141
	cmp	r11w, cx
	jb	.L1119
	sub	r11d, ecx
	or	edx, r10d
.L1119:
	shr	ax, 15
	test	r9w, r9w
	jns	.L1141
	xor	ebx, ebx
	cmp	r11w, ax
	jb	.L1103
	mov	ebx, r11d
	or	edx, 1
	sub	ebx, eax
	jmp	.L1103
	.p2align 4,,10
	.p2align 3
.L1141:
	mov	ebx, r11d
.L1103:
	test	r8d, r8d
	cmove	ebx, edx
	mov	eax, ebx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1100:
	mov	ebx, ecx
	test	dx, dx
	je	.L1103
	cmp	cx, r10w
	jb	.L1104
	mov	r11d, ecx
	mov	ebx, r9d
	and	ax, 32767
	mov	r9d, edx
	mov	ecx, eax
	sub	r11d, r10d
	and	bx, 32767
	mov	eax, r10d
	jmp	.L1105
	.p2align 4,,10
	.p2align 3
.L1154:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1112
	.p2align 4,,10
	.p2align 3
.L1104:
	mov	ebx, r9d
	and	ax, 32767
	mov	r9d, edx
	xor	edx, edx
	mov	ecx, eax
	and	bx, 32767
	mov	eax, r10d
	jmp	.L1105
	.p2align 4,,10
	.p2align 3
.L1155:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1113
	.p2align 4,,10
	.p2align 3
.L1156:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1114
	.p2align 4,,10
	.p2align 3
.L1157:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1115
	.p2align 4,,10
	.p2align 3
.L1158:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1116
.L1153:
	sete	dl
	mov	ebx, 0
	cmovne	ebx, ecx
	movzx	edx, dl
	jmp	.L1103
	.seh_endproc
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jb	.L1160
	jmp	.L1161
	.p2align 4,,10
	.p2align 3
.L1163:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L1162
	test	eax, eax
	je	.L1162
.L1160:
	test	edx, edx
	jns	.L1163
.L1161:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L1166:
	cmp	ecx, edx
	jb	.L1165
	sub	ecx, edx
	or	r9d, eax
.L1165:
	shr	edx
	shr	eax
	jne	.L1166
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1162:
	xor	r9d, r9d
	test	eax, eax
	jne	.L1161
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
	je	.L1182
	lea	ecx, -32[rdx]
	xor	eax, eax
	sal	r8d, cl
.L1183:
	sal	r8, 32
	or	rax, r8
.L1181:
	ret
	.p2align 4,,10
	.p2align 3
.L1182:
	mov	rax, rcx
	test	edx, edx
	je	.L1181
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
	jmp	.L1183
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
	je	.L1188
	lea	ecx, -64[rdx]
	xor	r9d, r9d
	sal	rax, cl
.L1189:
	mov	rcx, rax
	mov	rax, r9
	mov	rdx, rcx
.L1190:
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
.L1188:
	test	edx, edx
	je	.L1191
	mov	r9, rax
	mov	ecx, edx
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	mov	ecx, edx
	sal	r8, cl
	or	rax, r8
	jmp	.L1189
	.p2align 4,,10
	.p2align 3
.L1191:
	mov	rdx, r8
	jmp	.L1190
	.seh_endproc
	.p2align 4
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1193
	sar	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	sar	r8d, cl
	sar	eax, 31
.L1194:
	sal	rax, 32
	or	rax, r8
.L1192:
	ret
	.p2align 4,,10
	.p2align 3
.L1193:
	mov	rax, rcx
	test	edx, edx
	je	.L1192
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
	jmp	.L1194
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
	je	.L1199
	mov	r10, rax
	lea	ecx, -64[rdx]
	sar	r10, 63
	sar	rax, cl
.L1200:
	mov	rdx, rax
	mov	rax, r10
.L1201:
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
.L1199:
	test	edx, edx
	je	.L1202
	mov	r10, rax
	mov	ecx, edx
	sar	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1200
	.p2align 4,,10
	.p2align 3
.L1202:
	mov	rdx, r8
	jmp	.L1201
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
	jl	.L1207
	mov	eax, 2
	jg	.L1207
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1207
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1207:
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
	jl	.L1213
	mov	eax, 1
	jg	.L1213
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1213
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1213:
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
	jl	.L1218
	mov	eax, 2
	jg	.L1218
	xor	eax, eax
	cmp	r8, r9
	jb	.L1218
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1218:
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
	jne	.L1227
	xor	eax, eax
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	mov	edx, 0
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1227:
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
	je	.L1231
	shr	r8, 32
	lea	ecx, -32[rdx]
	xor	eax, eax
	shr	r8d, cl
.L1232:
	sal	rax, 32
	or	rax, r8
.L1230:
	ret
	.p2align 4,,10
	.p2align 3
.L1231:
	mov	rax, rcx
	test	edx, edx
	je	.L1230
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
	jmp	.L1232
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
	je	.L1237
	lea	ecx, -64[rdx]
	xor	r10d, r10d
	shr	rax, cl
.L1238:
	mov	rdx, rax
	mov	rax, r10
.L1239:
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
.L1237:
	test	edx, edx
	je	.L1240
	mov	r10, rax
	mov	ecx, edx
	shr	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1238
	.p2align 4,,10
	.p2align 3
.L1240:
	mov	rdx, r8
	jmp	.L1239
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
	movsd	xmm2, QWORD PTR .LC13[rip]
	movapd	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1254
	.p2align 4
	.p2align 3
.L1256:
	mulsd	xmm1, xmm0
.L1254:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1255
	mulsd	xmm0, xmm0
	test	al, 1
	jne	.L1256
.L1260:
	mulsd	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1256
	jmp	.L1260
	.p2align 4,,10
	.p2align 3
.L1255:
	test	edx, edx
	jns	.L1253
	divsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L1253:
	movapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	.seh_endprologue
	movss	xmm2, DWORD PTR .LC16[rip]
	movaps	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1262
	.p2align 4
	.p2align 3
.L1264:
	mulss	xmm1, xmm0
.L1262:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1263
	mulss	xmm0, xmm0
	test	al, 1
	jne	.L1264
.L1268:
	mulss	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1264
	jmp	.L1268
	.p2align 4,,10
	.p2align 3
.L1263:
	test	edx, edx
	jns	.L1261
	divss	xmm2, xmm1
	movaps	xmm1, xmm2
.L1261:
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
	jb	.L1269
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L1269
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1269
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1269:
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
	jb	.L1275
	mov	eax, 1
	cmp	r9d, r8d
	jb	.L1275
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1275
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1275:
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
	jb	.L1280
	mov	eax, 2
	cmp	rdx, rcx
	jb	.L1280
	xor	eax, eax
	cmp	r8, r9
	jb	.L1280
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1280:
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
	.set	.LC6,.LC8+4
	.align 4
.LC7:
	.long	1056964608
	.align 8
.LC8:
	.long	0
	.long	1073741824
	.align 8
.LC9:
	.long	0
	.long	1071644672
	.align 16
.LC10:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC11:
	.long	0
	.long	-1074790400
	.align 8
.LC12:
	.long	0
	.long	-1075838976
	.align 8
.LC13:
	.long	0
	.long	1072693248
	.align 8
.LC14:
	.long	0
	.long	1070596096
	.align 4
.LC15:
	.long	1191182336
	.align 4
.LC16:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
