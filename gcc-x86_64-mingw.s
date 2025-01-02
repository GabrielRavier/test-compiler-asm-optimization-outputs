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
	ucomisd	xmm0, xmm0
	jp	.L176
	ucomisd	xmm1, xmm1
	jp	.L180
	comisd	xmm0, xmm1
	jbe	.L183
	subsd	xmm0, xmm1
.L176:
	ret
	.p2align 4,,10
	.p2align 3
.L183:
	pxor	xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L180:
	movapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fdimf
	.def	fdimf;	.scl	2;	.type	32;	.endef
	.seh_proc	fdimf
fdimf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L184
	ucomiss	xmm1, xmm1
	jp	.L188
	comiss	xmm0, xmm1
	jbe	.L191
	subss	xmm0, xmm1
.L184:
	ret
	.p2align 4,,10
	.p2align 3
.L191:
	pxor	xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L188:
	movaps	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fmax
	.def	fmax;	.scl	2;	.type	32;	.endef
	.seh_proc	fmax
fmax:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L192
	ucomisd	xmm1, xmm1
	jp	.L198
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L194
	test	eax, eax
	jne	.L192
.L198:
	movapd	xmm1, xmm0
.L192:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L194:
	movapd	xmm2, xmm1
	maxsd	xmm2, xmm0
	movapd	xmm1, xmm2
	movapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L201
	ucomiss	xmm1, xmm1
	jp	.L207
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L203
	test	eax, eax
	jne	.L201
.L207:
	movaps	xmm1, xmm0
.L201:
	movaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L203:
	movaps	xmm2, xmm1
	maxss	xmm2, xmm0
	movaps	xmm1, xmm2
	movaps	xmm0, xmm1
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
	fucomi	st, st(0)
	jp	.L216
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L219
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	fxam
	fnstsw	ax
	and	edx, 512
	and	eax, 512
	cmp	edx, eax
	je	.L212
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	jmp	.L211
	.p2align 4,,10
	.p2align 3
.L219:
	fstp	st(0)
.L211:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L212:
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L216:
	fstp	st(0)
	jmp	.L211
	.seh_endproc
	.p2align 4
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	movapd	xmm2, xmm0
	jp	.L225
	ucomisd	xmm1, xmm1
	jp	.L220
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L222
	test	eax, eax
	jne	.L220
.L225:
	movapd	xmm0, xmm1
.L220:
	ret
	.p2align 4,,10
	.p2align 3
.L222:
	minsd	xmm2, xmm1
	movapd	xmm0, xmm2
	ret
	.seh_endproc
	.p2align 4
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L234
	ucomiss	xmm1, xmm1
	jp	.L229
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L231
	test	eax, eax
	jne	.L229
.L234:
	movaps	xmm0, xmm1
.L229:
	ret
	.p2align 4,,10
	.p2align 3
.L231:
	movaps	xmm2, xmm0
	minss	xmm2, xmm1
	movaps	xmm0, xmm2
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
	fucomi	st, st(0)
	jp	.L247
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L244
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	fxam
	fnstsw	ax
	and	edx, 512
	and	eax, 512
	cmp	edx, eax
	je	.L240
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	jmp	.L239
	.p2align 4,,10
	.p2align 3
.L247:
	fstp	st(0)
.L239:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L240:
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovnbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L244:
	fstp	st(0)
	jmp	.L239
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
	je	.L249
	lea	r8, digits[rip]
	.p2align 5
	.p2align 4
	.p2align 3
.L250:
	mov	edx, ecx
	add	rax, 1
	and	edx, 63
	movzx	edx, BYTE PTR [r8+rdx]
	mov	BYTE PTR -1[rax], dl
	shr	ecx, 6
	jne	.L250
.L249:
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
	je	.L261
	movq	xmm0, QWORD PTR [rdx]
	movq	xmm1, rdx
	punpcklqdq	xmm0, xmm1
	movups	XMMWORD PTR [rcx], xmm0
	mov	QWORD PTR [rdx], rcx
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L255
	mov	QWORD PTR 8[rax], rcx
.L255:
	ret
	.p2align 4,,10
	.p2align 3
.L261:
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
	je	.L263
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L263:
	mov	rdx, QWORD PTR 8[rcx]
	test	rdx, rdx
	je	.L262
	mov	QWORD PTR [rdx], rax
.L262:
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
	je	.L272
	mov	rbx, rdx
	xor	r15d, r15d
	jmp	.L274
	.p2align 4,,10
	.p2align 3
.L286:
	add	r15, 1
	add	rbx, rsi
	cmp	rdi, r15
	je	.L272
.L274:
	mov	r12, rbx
	mov	rdx, rbx
	mov	rcx, rbp
	call	r13
	test	eax, eax
	jne	.L286
.L271:
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
.L272:
	lea	rax, 1[rdi]
	imul	rdi, rsi
	add	rdi, QWORD PTR 120[rsp]
	mov	QWORD PTR [r14], rax
	mov	r12, rdi
	test	rsi, rsi
	je	.L271
	mov	r8, rsi
	mov	rdx, rbp
	mov	rcx, rdi
	call	memmove
	jmp	.L271
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
	je	.L288
	mov	rbx, rdx
	xor	esi, esi
	jmp	.L290
	.p2align 4,,10
	.p2align 3
.L298:
	add	rsi, 1
	add	rbx, rbp
	cmp	r12, rsi
	je	.L288
.L290:
	mov	r14, rbx
	mov	rdx, rbx
	mov	rcx, rdi
	call	r13
	test	eax, eax
	jne	.L298
.L287:
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
.L288:
	xor	r14d, r14d
	jmp	.L287
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
	jmp	.L323
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L318:
	add	rcx, 1
.L323:
	movsx	edx, BYTE PTR [rcx]
	lea	r8d, -9[rdx]
	mov	eax, edx
	cmp	r8d, 4
	jbe	.L318
	cmp	al, 32
	je	.L318
	cmp	al, 43
	je	.L304
	cmp	al, 45
	jne	.L324
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L313
	mov	r11d, 1
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
.L324:
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
.L304:
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	xor	r11d, r11d
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L307
	jmp	.L313
	.seh_endproc
	.p2align 4
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	.seh_endprologue
	jmp	.L346
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L342:
	add	rcx, 1
.L346:
	movsx	edx, BYTE PTR [rcx]
	lea	r8d, -9[rdx]
	mov	eax, edx
	cmp	r8d, 4
	jbe	.L342
	cmp	al, 32
	je	.L342
	cmp	al, 43
	je	.L329
	cmp	al, 45
	jne	.L330
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	r11d, 1
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L337
.L331:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L334:
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
	jbe	.L334
	sub	edx, ecx
	test	r11d, r11d
	cmove	r9d, edx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L330:
	sub	edx, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	edx, 9
	jbe	.L331
.L337:
	xor	r9d, r9d
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L329:
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L337
	xor	r11d, r11d
	jmp	.L331
	.seh_endproc
	.p2align 4
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	.seh_endprologue
	jmp	.L370
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L365:
	add	rcx, 1
.L370:
	movsx	edx, BYTE PTR [rcx]
	lea	r8d, -9[rdx]
	mov	eax, edx
	cmp	r8d, 4
	jbe	.L365
	cmp	al, 32
	je	.L365
	cmp	al, 43
	je	.L351
	cmp	al, 45
	jne	.L371
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	ja	.L360
	mov	r11d, 1
.L354:
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L357:
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
	jbe	.L357
	sub	rdx, rcx
	test	r11d, r11d
	cmove	r9, rdx
	mov	rax, r9
	ret
	.p2align 4,,10
	.p2align 3
.L371:
	sub	edx, 48
	mov	r10, rcx
	xor	r11d, r11d
	cmp	edx, 9
	jbe	.L354
.L360:
	xor	r9d, r9d
	mov	rax, r9
	ret
	.p2align 4,,10
	.p2align 3
.L351:
	movsx	edx, BYTE PTR 1[rcx]
	lea	r10, 1[rcx]
	xor	r11d, r11d
	mov	eax, edx
	sub	edx, 48
	cmp	edx, 9
	jbe	.L354
	jmp	.L360
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
.L385:
	test	rbx, rbx
	je	.L373
.L386:
	mov	r14, rbx
	mov	rcx, r12
	shr	r14
	mov	rsi, r14
	imul	rsi, rdi
	add	rsi, rbp
	mov	rdx, rsi
	call	r13
	test	eax, eax
	js	.L377
	je	.L372
	sub	rbx, 1
	lea	rbp, [rsi+rdi]
	sub	rbx, r14
	test	rbx, rbx
	jne	.L386
.L373:
	xor	esi, esi
.L372:
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
.L377:
	mov	rbx, r14
	jmp	.L385
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
	je	.L392
	.p2align 4
	.p2align 3
.L388:
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
	je	.L387
	jle	.L390
	sub	r14d, 1
	lea	rdi, [rbx+rsi]
	sar	r14d
	jne	.L388
.L392:
	xor	ebx, ebx
.L387:
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
.L390:
	test	r15d, r15d
	je	.L392
	mov	r14d, r15d
	jmp	.L388
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
	jne	.L408
	jmp	.L411
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L410:
	movzx	eax, WORD PTR 2[rcx]
	add	rcx, 2
	test	ax, ax
	je	.L411
.L408:
	cmp	dx, ax
	jne	.L410
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L411:
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
	je	.L414
	jmp	.L415
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L416:
	movzx	r8d, WORD PTR [rcx+rax]
	add	rax, 2
	movzx	r9d, WORD PTR -2[rdx+rax]
	cmp	r8w, r9w
	jne	.L415
.L414:
	test	r8w, r8w
	jne	.L416
.L415:
	mov	eax, -1
	cmp	r8w, r9w
	jb	.L413
	xor	eax, eax
	cmp	r9w, r8w
	setb	al
.L413:
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
.L422:
	movzx	r9d, WORD PTR [rdx+r8]
	mov	WORD PTR [rax+r8], r9w
	add	r8, 2
	test	r9w, r9w
	jne	.L422
	ret
	.seh_endproc
	.p2align 4
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	cmp	WORD PTR [rcx], 0
	je	.L427
	mov	rax, rcx
	.p2align 4
	.p2align 4
	.p2align 3
.L426:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L426
	sub	rax, rcx
	sar	rax
	ret
	.p2align 4,,10
	.p2align 3
.L427:
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
	jne	.L430
	jmp	.L436
	.p2align 4,,10
	.p2align 3
.L441:
	test	ax, ax
	je	.L434
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L436
.L430:
	movzx	eax, WORD PTR [rcx]
	cmp	WORD PTR [rdx], ax
	je	.L441
.L434:
	movzx	ecx, WORD PTR [rcx]
	movzx	eax, WORD PTR [rdx]
	cmp	cx, ax
	jb	.L442
	cmp	ax, cx
	setb	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L442:
	mov	eax, -1
	ret
	.p2align 4,,10
	.p2align 3
.L436:
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
	jne	.L444
	jmp	.L447
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L446:
	add	rcx, 2
	sub	r8, 1
	je	.L447
.L444:
	cmp	WORD PTR [rcx], dx
	jne	.L446
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L447:
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
	jne	.L450
	jmp	.L455
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L452:
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L455
.L450:
	movzx	eax, WORD PTR [rcx]
	cmp	ax, WORD PTR [rdx]
	je	.L452
	movzx	edx, WORD PTR [rdx]
	cmp	ax, dx
	jb	.L458
	cmp	dx, ax
	setb	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L455:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L458:
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
	je	.L460
	add	r8, r8
	call	memcpy
	mov	rcx, rax
.L460:
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
	je	.L495
	mov	rax, rcx
	lea	r10, [r8+r8]
	lea	r9, -1[r8]
	sub	rax, rdx
	cmp	rax, r10
	jb	.L466
	test	r8, r8
	je	.L495
	cmp	r9, 2
	jbe	.L485
	lea	r10, 2[rdx]
	mov	rax, rcx
	sub	rax, r10
	cmp	rax, 12
	jbe	.L485
	cmp	r9, 6
	jbe	.L486
	mov	r11, r8
	xor	eax, eax
	xor	r10d, r10d
	shr	r11, 3
	.p2align 5
	.p2align 4
	.p2align 3
.L477:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	add	r10, 1
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	r11, r10
	jne	.L477
	mov	r10, r8
	and	r10, -8
	lea	rax, [r10+r10]
	sub	r9, r10
	lea	r11, [rdx+rax]
	add	rax, rcx
	test	r8b, 7
	je	.L495
	sub	r8, r10
	lea	rbx, -1[r8]
	cmp	rbx, 2
	jbe	.L480
.L476:
	mov	rdx, QWORD PTR [rdx+r10*2]
	mov	QWORD PTR [rcx+r10*2], rdx
	mov	rdx, r8
	and	rdx, -4
	sub	r9, rdx
	add	rdx, rdx
	add	r11, rdx
	add	rax, rdx
	and	r8d, 3
	je	.L495
.L480:
	movzx	edx, WORD PTR [r11]
	mov	WORD PTR [rax], dx
	test	r9, r9
	je	.L495
	movzx	edx, WORD PTR 2[r11]
	mov	WORD PTR 2[rax], dx
	cmp	r9, 1
	je	.L495
	movzx	edx, WORD PTR 4[r11]
	mov	WORD PTR 4[rax], dx
.L495:
	mov	rax, rcx
	pop	rbx
	pop	rsi
	ret
	.p2align 4,,10
	.p2align 3
.L466:
	test	r8, r8
	je	.L495
	cmp	r9, 2
	jbe	.L473
	mov	rax, rcx
	sub	rax, rdx
	add	rax, 6
	cmp	rax, 4
	jbe	.L473
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
.L470:
	mov	r11, QWORD PTR [rsi+rax]
	mov	QWORD PTR [r10+rax], r11
	sub	rax, 8
	cmp	rax, rbx
	jne	.L470
	mov	rax, r8
	and	rax, -4
	sub	r9, rax
	and	r8d, 3
	je	.L495
	movzx	eax, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], ax
	test	r9, r9
	je	.L495
	sub	r9, 1
	movzx	r8d, WORD PTR [rdx+r9*2]
	lea	rax, [r9+r9]
	mov	WORD PTR [rcx+r9*2], r8w
	je	.L495
	movzx	edx, WORD PTR -2[rdx+rax]
	mov	WORD PTR -2[rcx+rax], dx
	jmp	.L495
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L473:
	movzx	eax, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], ax
	sub	r9, 1
	jb	.L495
	movzx	eax, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], ax
	sub	r9, 1
	jnb	.L473
	jmp	.L495
	.p2align 4,,10
	.p2align 3
.L485:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L482:
	movzx	r9d, WORD PTR [rdx+rax*2]
	mov	WORD PTR [rcx+rax*2], r9w
	add	rax, 1
	cmp	r8, rax
	jne	.L482
	jmp	.L495
.L486:
	mov	r11, rdx
	mov	rax, rcx
	xor	r10d, r10d
	jmp	.L476
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
	je	.L518
	cmp	r11, 6
	jbe	.L524
	movd	xmm0, edx
	mov	r10, r8
	xor	eax, eax
	punpcklwd	xmm0, xmm0
	shr	r10, 3
	pshufd	xmm0, xmm0, 0
	.p2align 5
	.p2align 4
	.p2align 3
.L520:
	mov	rcx, rax
	add	rax, 1
	sal	rcx, 4
	movups	XMMWORD PTR [r9+rcx], xmm0
	cmp	r10, rax
	jne	.L520
	mov	rax, r8
	and	rax, -8
	sub	r11, rax
	lea	rcx, [r9+rax*2]
	test	r8b, 7
	je	.L518
.L519:
	sub	r8, rax
	lea	r10, -1[r8]
	cmp	r10, 2
	jbe	.L522
	movd	xmm1, edx
	pshuflw	xmm0, xmm1, 0
	movq	QWORD PTR [r9+rax*2], xmm0
	mov	rax, r8
	and	rax, -4
	sub	r11, rax
	and	r8d, 3
	lea	rcx, [rcx+rax*2]
	je	.L518
.L522:
	mov	WORD PTR [rcx], dx
	test	r11, r11
	je	.L518
	mov	WORD PTR 2[rcx], dx
	cmp	r11, 1
	je	.L518
	mov	WORD PTR 4[rcx], dx
.L518:
	mov	rax, r9
	ret
.L524:
	xor	eax, eax
	jmp	.L519
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
	jnb	.L542
	test	r8, r8
	je	.L541
	.p2align 5
	.p2align 4
	.p2align 3
.L544:
	movzx	eax, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[r9+r8], al
	sub	r8, 1
	jne	.L544
.L541:
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L542:
	je	.L541
	test	r8, r8
	je	.L541
	lea	rax, -1[r8]
	cmp	rax, 6
	jbe	.L555
	lea	r10, 1[rcx]
	sub	rdx, r10
	cmp	rdx, 14
	jbe	.L555
	cmp	rax, 14
	jbe	.L556
	mov	rdx, r8
	xor	eax, eax
	and	rdx, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L547:
	movdqu	xmm0, XMMWORD PTR [rcx+rax]
	movups	XMMWORD PTR [r9+rax], xmm0
	add	rax, 16
	cmp	rdx, rax
	jne	.L547
	mov	rax, r8
	lea	r10, [r9+rdx]
	lea	r11, [rcx+rdx]
	sub	rax, rdx
	cmp	rdx, r8
	je	.L541
	lea	rbx, -1[rax]
	mov	r8, rax
	cmp	rbx, 6
	jbe	.L550
.L546:
	mov	rcx, QWORD PTR [rcx+rdx]
	mov	QWORD PTR [r9+rdx], rcx
	mov	rdx, r8
	and	rdx, -8
	add	r10, rdx
	add	r11, rdx
	sub	rax, rdx
	and	r8d, 7
	je	.L541
.L550:
	movzx	edx, BYTE PTR [r11]
	mov	BYTE PTR [r10], dl
	cmp	rax, 1
	je	.L541
	movzx	edx, BYTE PTR 1[r11]
	mov	BYTE PTR 1[r10], dl
	cmp	rax, 2
	je	.L541
	movzx	edx, BYTE PTR 2[r11]
	mov	BYTE PTR 2[r10], dl
	cmp	rax, 3
	je	.L541
	movzx	edx, BYTE PTR 3[r11]
	mov	BYTE PTR 3[r10], dl
	cmp	rax, 4
	je	.L541
	movzx	edx, BYTE PTR 4[r11]
	mov	BYTE PTR 4[r10], dl
	cmp	rax, 5
	je	.L541
	movzx	edx, BYTE PTR 5[r11]
	mov	BYTE PTR 5[r10], dl
	cmp	rax, 6
	je	.L541
	movzx	eax, BYTE PTR 6[r11]
	mov	BYTE PTR 6[r10], al
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L555:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L552:
	movzx	edx, BYTE PTR [rcx+rax]
	mov	BYTE PTR [r9+rax], dl
	add	rax, 1
	cmp	r8, rax
	jne	.L552
	pop	rbx
	ret
.L556:
	mov	r10, r9
	mov	r11, rcx
	mov	rax, r8
	xor	edx, edx
	jmp	.L546
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
	jmp	.L603
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L601:
	cmp	ecx, 32
	je	.L605
.L603:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L601
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L605:
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
	je	.L606
	mov	eax, ecx
	and	eax, 1
	jne	.L606
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L608:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L608
.L606:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinff
	.def	gl_isinff;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinff
gl_isinff:
	.seh_endprologue
	movss	xmm1, DWORD PTR .LC6[rip]
	mov	eax, 1
	comiss	xmm1, xmm0
	ja	.L613
	xor	eax, eax
	comiss	xmm0, DWORD PTR .LC7[rip]
	seta	al
.L613:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinfd
	.def	gl_isinfd;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfd
gl_isinfd:
	.seh_endprologue
	movsd	xmm1, QWORD PTR .LC8[rip]
	mov	eax, 1
	comisd	xmm1, xmm0
	ja	.L616
	xor	eax, eax
	comisd	xmm0, QWORD PTR .LC9[rip]
	seta	al
.L616:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinfl
	.def	gl_isinfl;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfl
gl_isinfl:
	.seh_endprologue
	mov	eax, 1
	fld	TBYTE PTR [rcx]
	fld	TBYTE PTR .LC10[rip]
	fcomip	st, st(1)
	ja	.L622
	fld	TBYTE PTR .LC11[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L619
	.p2align 4,,10
	.p2align 3
.L622:
	fstp	st(0)
.L619:
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
	ucomiss	xmm0, xmm0
	jp	.L625
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L632
	jne	.L632
.L625:
	ret
	.p2align 4,,10
	.p2align 3
.L632:
	movss	xmm1, DWORD PTR .LC12[rip]
	test	edx, edx
	jns	.L627
	movss	xmm1, DWORD PTR .LC13[rip]
.L627:
	test	dl, 1
	je	.L628
	.p2align 4
	.p2align 3
.L629:
	mulss	xmm0, xmm1
.L628:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L625
	mulss	xmm1, xmm1
	test	dl, 1
	jne	.L629
.L639:
	mulss	xmm1, xmm1
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L629
	jmp	.L639
	.seh_endproc
	.p2align 4
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L641
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L648
	jne	.L648
.L641:
	ret
	.p2align 4,,10
	.p2align 3
.L648:
	movsd	xmm1, QWORD PTR .LC14[rip]
	test	edx, edx
	jns	.L643
	movsd	xmm1, QWORD PTR .LC15[rip]
.L643:
	test	dl, 1
	je	.L644
	.p2align 4
	.p2align 3
.L645:
	mulsd	xmm0, xmm1
.L644:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L641
	mulsd	xmm1, xmm1
	test	dl, 1
	jne	.L645
.L655:
	mulsd	xmm1, xmm1
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L645
	jmp	.L655
	.seh_endproc
	.p2align 4
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	.seh_endprologue
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	mov	rax, rcx
	jp	.L657
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L664
	jne	.L664
	jmp	.L657
	.p2align 4,,10
	.p2align 3
.L673:
	fstp	st(0)
.L657:
	fstp	TBYTE PTR [rax]
	ret
	.p2align 4,,10
	.p2align 3
.L664:
	test	r8d, r8d
	js	.L671
	fld	DWORD PTR .LC12[rip]
.L659:
	test	r8b, 1
	je	.L660
	.p2align 4
	.p2align 3
.L661:
	fmul	st(1), st
.L660:
	mov	edx, r8d
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	je	.L673
	fmul	st, st(0)
	test	r8b, 1
	jne	.L661
.L672:
	mov	edx, r8d
	fmul	st, st(0)
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	test	r8b, 1
	jne	.L661
	jmp	.L672
	.p2align 4,,10
	.p2align 3
.L671:
	fld	DWORD PTR .LC13[rip]
	jmp	.L659
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
	je	.L675
	lea	rax, -1[r8]
	cmp	rax, 14
	jbe	.L681
	mov	r9, r8
	xor	eax, eax
	and	r9, -16
	.p2align 5
	.p2align 4
	.p2align 3
.L677:
	movdqu	xmm2, XMMWORD PTR [rcx+rax]
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	pxor	xmm0, xmm2
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r9
	jne	.L677
	mov	r11, r8
	lea	rax, [rcx+r9]
	lea	r10, [rdx+r9]
	sub	r11, r9
	cmp	r8, r9
	je	.L675
.L676:
	sub	r8, r9
	lea	rbx, -1[r8]
	cmp	rbx, 6
	jbe	.L679
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
	je	.L675
.L679:
	movzx	edx, BYTE PTR [r10]
	xor	BYTE PTR [rax], dl
	cmp	r11, 1
	je	.L675
	movzx	edx, BYTE PTR 1[r10]
	xor	BYTE PTR 1[rax], dl
	cmp	r11, 2
	je	.L675
	movzx	edx, BYTE PTR 2[r10]
	xor	BYTE PTR 2[rax], dl
	cmp	r11, 3
	je	.L675
	movzx	edx, BYTE PTR 3[r10]
	xor	BYTE PTR 3[rax], dl
	cmp	r11, 4
	je	.L675
	movzx	edx, BYTE PTR 4[r10]
	xor	BYTE PTR 4[rax], dl
	cmp	r11, 5
	je	.L675
	movzx	edx, BYTE PTR 5[r10]
	xor	BYTE PTR 5[rax], dl
	cmp	r11, 6
	je	.L675
	movzx	edx, BYTE PTR 6[r10]
	xor	BYTE PTR 6[rax], dl
.L675:
	mov	rax, rcx
	pop	rbx
	ret
.L681:
	mov	rax, rcx
	mov	r10, rdx
	mov	r11, r8
	xor	r9d, r9d
	jmp	.L676
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
	je	.L708
	.p2align 4
	.p2align 4
	.p2align 3
.L709:
	add	r9, 1
	cmp	BYTE PTR [r9], 0
	jne	.L709
.L708:
	test	r8, r8
	jne	.L710
	jmp	.L711
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L712:
	add	rdx, 1
	add	r9, 1
	sub	r8, 1
	je	.L711
.L710:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [r9], r10b
	test	r10b, r10b
	jne	.L712
	ret
	.p2align 4,,10
	.p2align 3
.L711:
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
	je	.L720
.L721:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L723
.L720:
	ret
	.p2align 4,,10
	.p2align 3
.L723:
	add	rax, 1
	cmp	rdx, rax
	jne	.L721
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
	je	.L733
.L729:
	mov	r8, rdx
	jmp	.L732
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L731:
	add	r8, 1
	cmp	r9b, r10b
	je	.L730
.L732:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	jne	.L731
	movzx	r10d, BYTE PTR 1[rax]
	add	rax, 1
	test	r10b, r10b
	jne	.L729
.L733:
	xor	eax, eax
.L730:
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
.L737:
	movsx	r9d, BYTE PTR [rcx]
	cmp	edx, r9d
	cmove	r8, rcx
	add	rcx, 1
	test	r9b, r9b
	jne	.L737
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
	je	.L751
	mov	rax, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L741:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L741
	mov	r8, rcx
	sub	rax, rsi
	je	.L739
	lea	rbx, -1[rsi+rax]
	jmp	.L748
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L762:
	add	rcx, 1
	test	al, al
	je	.L761
.L748:
	movzx	eax, BYTE PTR [rcx]
	cmp	al, dl
	jne	.L762
	mov	r8d, edx
	mov	rax, rsi
	mov	r10, rcx
	jmp	.L743
	.p2align 4,,10
	.p2align 3
.L763:
	test	r9b, r9b
	setne	r11b
	cmp	r9b, r8b
	sete	r9b
	test	r11b, r9b
	je	.L744
	movzx	r8d, BYTE PTR 1[r10]
	add	r10, 1
	add	rax, 1
	test	r8b, r8b
	je	.L744
.L743:
	movzx	r9d, BYTE PTR [rax]
	cmp	rax, rbx
	jne	.L763
.L744:
	cmp	r8b, BYTE PTR [rax]
	je	.L751
	add	rcx, 1
	jmp	.L748
	.p2align 4,,10
	.p2align 3
.L761:
	xor	r8d, r8d
.L739:
	mov	rax, r8
	pop	rbx
	pop	rsi
	ret
.L751:
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
	ja	.L774
	comisd	xmm0, xmm2
	jbe	.L768
	comisd	xmm2, xmm1
	ja	.L767
.L768:
	ret
	.p2align 4,,10
	.p2align 3
.L774:
	comisd	xmm1, xmm2
	jbe	.L768
.L767:
	xorpd	xmm0, XMMWORD PTR .LC16[rip]
	ret
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
	je	.L775
	cmp	rdx, r9
	jb	.L786
	sub	rdx, r9
	add	rdx, rcx
	jc	.L786
	movzx	r11d, BYTE PTR [r8]
	jmp	.L781
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L785:
	mov	rax, rcx
.L777:
	cmp	rdx, rax
	jb	.L786
.L781:
	lea	rcx, 1[rax]
	cmp	BYTE PTR [rax], r11b
	jne	.L785
	cmp	r9, 1
	je	.L775
.L780:
	mov	r10d, 1
	jmp	.L778
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L779:
	add	r10, 1
	cmp	r9, r10
	je	.L775
.L778:
	movzx	ebx, BYTE PTR [r8+r10]
	cmp	BYTE PTR [rax+r10], bl
	je	.L779
	cmp	rdx, rcx
	jb	.L786
	lea	rax, 1[rcx]
	cmp	r11b, BYTE PTR [rcx]
	jne	.L777
	mov	r10, rcx
	mov	rcx, rax
	mov	rax, r10
	jmp	.L780
	.p2align 4,,10
	.p2align 3
.L786:
	xor	eax, eax
.L775:
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
	je	.L794
	call	memmove
	mov	rcx, rax
.L794:
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
	pxor	xmm3, xmm3
	comisd	xmm3, xmm0
	ja	.L822
	movsd	xmm2, QWORD PTR .LC19[rip]
	xor	ecx, ecx
	comisd	xmm0, xmm2
	jb	.L823
.L801:
	movsd	xmm1, QWORD PTR .LC15[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L808:
	mulsd	xmm0, xmm1
	add	eax, 1
	comisd	xmm0, xmm2
	jnb	.L808
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L798
.L825:
	xorpd	xmm0, XMMWORD PTR .LC16[rip]
.L798:
	ret
	.p2align 4,,10
	.p2align 3
.L823:
	movsd	xmm1, QWORD PTR .LC15[rip]
	comisd	xmm1, xmm0
	jbe	.L804
	ucomisd	xmm0, xmm3
	jp	.L814
	jne	.L814
.L804:
	mov	DWORD PTR [rdx], 0
	ret
	.p2align 4,,10
	.p2align 3
.L822:
	movsd	xmm1, QWORD PTR .LC17[rip]
	movapd	xmm2, xmm0
	xorpd	xmm2, XMMWORD PTR .LC16[rip]
	comisd	xmm1, xmm0
	jb	.L824
	movapd	xmm0, xmm2
	mov	ecx, 1
	movsd	xmm2, QWORD PTR .LC19[rip]
	jmp	.L801
	.p2align 4,,10
	.p2align 3
.L824:
	comisd	xmm0, QWORD PTR .LC18[rip]
	jbe	.L804
	movsd	xmm1, QWORD PTR .LC15[rip]
	mov	ecx, 1
.L802:
	movapd	xmm0, xmm2
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L810:
	addsd	xmm0, xmm0
	sub	eax, 1
	comisd	xmm1, xmm0
	ja	.L810
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	jne	.L825
	jmp	.L798
.L814:
	movapd	xmm2, xmm0
	xor	ecx, ecx
	jmp	.L802
	.seh_endproc
	.p2align 4
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	xor	r8d, r8d
	test	rcx, rcx
	je	.L826
	.p2align 5
	.p2align 4
	.p2align 3
.L828:
	mov	rax, rcx
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rdx, rdx
	add	r8, rax
	shr	rcx
	jne	.L828
.L826:
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
	jb	.L832
	jmp	.L833
	.p2align 4,,10
	.p2align 3
.L835:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L834
	test	eax, eax
	je	.L834
.L832:
	test	edx, edx
	jns	.L835
.L833:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L838:
	cmp	ecx, edx
	jb	.L837
	sub	ecx, edx
	or	r9d, eax
.L837:
	shr	edx
	shr	eax
	jne	.L838
	test	r8, r8
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L834:
	xor	r9d, r9d
	test	eax, eax
	jne	.L833
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
	je	.L853
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	r8d, -1[rax]
.L853:
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
	je	.L856
	bsr	rax, rax
	xor	rax, 63
	lea	r8d, -1[rax]
.L856:
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
	je	.L859
	.p2align 5
	.p2align 4
	.p2align 3
.L861:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L861
.L859:
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
	jb	.L869
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L900
.L869:
	test	ebx, ebx
	je	.L901
	lea	eax, -1[rbx]
	cmp	eax, 2
	jbe	.L871
	lea	rax, 8[rdx]
	cmp	rcx, rax
	je	.L871
	mov	r11d, r8d
	xor	eax, eax
	shr	r11d, 4
	mov	r9d, r11d
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L872:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r9
	jne	.L872
	add	r11d, r11d
	cmp	ebx, r11d
	je	.L875
	mov	rax, QWORD PTR [rdx+r11*8]
	mov	QWORD PTR [rcx+r11*8], rax
.L875:
	cmp	r10d, r8d
	jnb	.L864
	mov	esi, r8d
	mov	r9d, r10d
	sub	esi, r10d
	lea	eax, -1[rsi]
	cmp	eax, 6
	jbe	.L867
	lea	rbx, [rcx+r9]
	lea	rdi, 1[rdx+r9]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 14
	jbe	.L867
	cmp	eax, 14
	jbe	.L884
	mov	r11d, esi
	lea	rdi, [rdx+r9]
	xor	eax, eax
	shr	r11d, 4
	sal	r11, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L877:
	movdqu	xmm0, XMMWORD PTR [rdi+rax]
	movups	XMMWORD PTR [rbx+rax], xmm0
	add	rax, 16
	cmp	r11, rax
	jne	.L877
	mov	eax, esi
	and	eax, -16
	add	r10d, eax
	test	sil, 15
	je	.L864
	sub	esi, eax
	lea	r11d, -1[rsi]
	cmp	r11d, 6
	jbe	.L879
.L876:
	add	rax, r9
	mov	r9, QWORD PTR [rdx+rax]
	mov	QWORD PTR [rcx+rax], r9
	mov	eax, esi
	and	eax, -8
	add	r10d, eax
	and	esi, 7
	je	.L864
.L879:
	mov	eax, r10d
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 1[r10]
	cmp	eax, r8d
	jnb	.L864
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 2[r10]
	cmp	eax, r8d
	jnb	.L864
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 3[r10]
	cmp	eax, r8d
	jnb	.L864
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 4[r10]
	cmp	eax, r8d
	jnb	.L864
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 5[r10]
	cmp	eax, r8d
	jnb	.L864
	movzx	r9d, BYTE PTR [rdx+rax]
	add	r10d, 6
	mov	BYTE PTR [rcx+rax], r9b
	cmp	r10d, r8d
	jnb	.L864
	movzx	eax, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], al
.L864:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L900:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L864
	.p2align 4
	.p2align 4
	.p2align 3
.L883:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L883
	pop	rbx
	pop	rsi
	pop	rdi
	ret
.L884:
	xor	eax, eax
	jmp	.L876
	.p2align 4,,10
	.p2align 3
.L901:
	mov	r9d, r10d
	test	r8d, r8d
	je	.L864
.L867:
	mov	rax, r9
	.p2align 5
	.p2align 4
	.p2align 3
.L881:
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	add	rax, 1
	cmp	eax, r8d
	jb	.L881
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L871:
	lea	r11d, 0[0+rbx*8]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L874:
	mov	r9, QWORD PTR [rdx+rax]
	mov	QWORD PTR [rcx+rax], r9
	add	rax, 8
	cmp	r11, rax
	jne	.L874
	jmp	.L875
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
	jb	.L906
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L930
.L906:
	test	r11d, r11d
	je	.L905
	lea	eax, -1[r11]
	cmp	eax, 2
	jbe	.L909
	lea	r10, 2[rdx]
	mov	r9, rcx
	sub	r9, r10
	cmp	r9, 12
	jbe	.L909
	cmp	eax, 6
	jbe	.L919
	mov	r9d, r8d
	xor	eax, eax
	shr	r9d, 4
	mov	r10d, r9d
	sal	r10, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L911:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r10
	jne	.L911
	lea	eax, 0[0+r9*8]
	cmp	r11d, eax
	je	.L905
	mov	r9d, r11d
	sub	r9d, eax
	lea	r10d, -1[r9]
	cmp	r10d, 2
	jbe	.L913
.L910:
	mov	r10d, eax
	movq	xmm0, QWORD PTR [rdx+r10*2]
	movq	QWORD PTR [rcx+r10*2], xmm0
	mov	r10d, r9d
	and	r10d, -4
	add	eax, r10d
	and	r9d, 3
	je	.L905
.L913:
	mov	r9d, eax
	movzx	r10d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rcx+r9*2], r10w
	lea	r9d, 1[rax]
	cmp	r9d, r11d
	jnb	.L905
	movzx	r10d, WORD PTR [rdx+r9*2]
	add	eax, 2
	mov	WORD PTR [rcx+r9*2], r10w
	cmp	eax, r11d
	jnb	.L905
	movzx	r9d, WORD PTR [rdx+rax*2]
	mov	WORD PTR [rcx+rax*2], r9w
.L905:
	test	r8b, 1
	je	.L902
.L931:
	lea	eax, -1[r8]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], dl
.L902:
	ret
	.p2align 4,,10
	.p2align 3
.L930:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L902
	.p2align 4
	.p2align 4
	.p2align 3
.L918:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L918
	ret
.L919:
	mov	r9d, r11d
	xor	eax, eax
	jmp	.L910
	.p2align 4,,10
	.p2align 3
.L909:
	lea	r10d, [r11+r11]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L915:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
	cmp	rax, r10
	jne	.L915
	test	r8b, 1
	je	.L902
	jmp	.L931
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
	jb	.L937
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L968
.L937:
	test	ebx, ebx
	je	.L969
	lea	eax, -1[rbx]
	cmp	eax, 2
	jbe	.L939
	lea	r9, 4[rdx]
	mov	rax, rcx
	sub	rax, r9
	cmp	rax, 8
	jbe	.L939
	mov	r11d, r8d
	xor	eax, eax
	shr	r11d, 4
	mov	r9d, r11d
	sal	r9, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L940:
	movdqu	xmm0, XMMWORD PTR [rdx+rax]
	movups	XMMWORD PTR [rcx+rax], xmm0
	add	rax, 16
	cmp	rax, r9
	jne	.L940
	lea	eax, 0[0+r11*4]
	cmp	ebx, eax
	je	.L943
	mov	r9d, eax
	mov	r11d, DWORD PTR [rdx+r9*4]
	mov	DWORD PTR [rcx+r9*4], r11d
	lea	r9d, 1[rax]
	cmp	r9d, ebx
	jnb	.L943
	mov	r11d, DWORD PTR [rdx+r9*4]
	add	eax, 2
	mov	DWORD PTR [rcx+r9*4], r11d
	cmp	eax, ebx
	jnb	.L943
	mov	r9d, DWORD PTR [rdx+rax*4]
	mov	DWORD PTR [rcx+rax*4], r9d
.L943:
	cmp	r10d, r8d
	jnb	.L932
	mov	esi, r8d
	mov	r9d, r10d
	sub	esi, r10d
	lea	eax, -1[rsi]
	cmp	eax, 6
	jbe	.L935
	lea	rbx, [rcx+r9]
	lea	rdi, 1[rdx+r9]
	mov	r11, rbx
	sub	r11, rdi
	cmp	r11, 14
	jbe	.L935
	cmp	eax, 14
	jbe	.L952
	mov	r11d, esi
	lea	rdi, [rdx+r9]
	xor	eax, eax
	shr	r11d, 4
	sal	r11, 4
	.p2align 5
	.p2align 4
	.p2align 3
.L945:
	movdqu	xmm0, XMMWORD PTR [rdi+rax]
	movups	XMMWORD PTR [rbx+rax], xmm0
	add	rax, 16
	cmp	r11, rax
	jne	.L945
	mov	eax, esi
	and	eax, -16
	add	r10d, eax
	test	sil, 15
	je	.L932
	sub	esi, eax
	lea	r11d, -1[rsi]
	cmp	r11d, 6
	jbe	.L947
.L944:
	add	rax, r9
	mov	r9, QWORD PTR [rdx+rax]
	mov	QWORD PTR [rcx+rax], r9
	mov	eax, esi
	and	eax, -8
	add	r10d, eax
	and	esi, 7
	je	.L932
.L947:
	mov	eax, r10d
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 1[r10]
	cmp	eax, r8d
	jnb	.L932
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 2[r10]
	cmp	eax, r8d
	jnb	.L932
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 3[r10]
	cmp	eax, r8d
	jnb	.L932
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 4[r10]
	cmp	eax, r8d
	jnb	.L932
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	lea	eax, 5[r10]
	cmp	eax, r8d
	jnb	.L932
	movzx	r9d, BYTE PTR [rdx+rax]
	add	r10d, 6
	mov	BYTE PTR [rcx+rax], r9b
	cmp	r10d, r8d
	jnb	.L932
	movzx	eax, BYTE PTR [rdx+r10]
	mov	BYTE PTR [rcx+r10], al
.L932:
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L968:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L932
	.p2align 4
	.p2align 4
	.p2align 3
.L951:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L951
	pop	rbx
	pop	rsi
	pop	rdi
	ret
.L952:
	xor	eax, eax
	jmp	.L944
	.p2align 4,,10
	.p2align 3
.L969:
	mov	r9d, r10d
	test	r8d, r8d
	je	.L932
.L935:
	mov	rax, r9
	.p2align 5
	.p2align 4
	.p2align 3
.L949:
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
	add	rax, 1
	cmp	eax, r8d
	jb	.L949
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.p2align 4,,10
	.p2align 3
.L939:
	lea	r11d, 0[0+rbx*4]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L942:
	mov	r9d, DWORD PTR [rdx+rax]
	mov	DWORD PTR [rcx+rax], r9d
	add	rax, 4
	cmp	rax, r11
	jne	.L942
	jmp	.L943
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
	js	.L978
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L978:
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
	js	.L981
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L981:
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
	jne	.L987
	mov	eax, edx
	sar	eax, 14
	jne	.L984
	mov	eax, edx
	shr	eax, 13
	jne	.L988
	mov	eax, edx
	shr	eax, 12
	jne	.L989
	mov	eax, edx
	shr	eax, 11
	jne	.L990
	mov	eax, edx
	shr	eax, 10
	jne	.L991
	mov	eax, edx
	shr	eax, 9
	jne	.L992
	mov	eax, edx
	shr	eax, 8
	jne	.L993
	mov	eax, edx
	shr	eax, 7
	jne	.L994
	mov	eax, edx
	shr	eax, 6
	jne	.L995
	mov	eax, edx
	shr	eax, 5
	jne	.L996
	mov	eax, edx
	shr	eax, 4
	jne	.L997
	mov	eax, edx
	shr	eax, 3
	jne	.L998
	mov	eax, edx
	shr	eax, 2
	jne	.L999
	shr	edx
	jne	.L1000
	cmp	cx, 1
	mov	eax, 15
	adc	eax, 0
.L984:
	ret
.L987:
	xor	eax, eax
	ret
.L998:
	mov	eax, 12
	ret
.L988:
	mov	eax, 2
	ret
.L989:
	mov	eax, 3
	ret
.L990:
	mov	eax, 4
	ret
.L991:
	mov	eax, 5
	ret
.L992:
	mov	eax, 6
	ret
.L993:
	mov	eax, 7
	ret
.L994:
	mov	eax, 8
	ret
.L995:
	mov	eax, 9
	ret
.L996:
	mov	eax, 10
	ret
.L997:
	mov	eax, 11
	ret
.L999:
	mov	eax, 13
	ret
.L1000:
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
	jne	.L1005
	test	cl, 2
	jne	.L1006
	test	cl, 4
	jne	.L1007
	test	cl, 8
	jne	.L1008
	test	cl, 16
	jne	.L1009
	test	cl, 32
	jne	.L1010
	test	cl, 64
	jne	.L1011
	test	cl, -128
	jne	.L1012
	test	ch, 1
	jne	.L1013
	test	ch, 2
	jne	.L1014
	test	ch, 4
	jne	.L1015
	test	ch, 8
	jne	.L1016
	test	ch, 16
	jne	.L1017
	test	ch, 32
	jne	.L1018
	test	ch, 64
	jne	.L1019
	xor	eax, eax
	and	ch, -128
	sete	al
	add	eax, 15
	ret
.L1005:
	xor	eax, eax
	ret
.L1006:
	mov	eax, 1
	ret
.L1017:
	mov	eax, 12
	ret
.L1007:
	mov	eax, 2
	ret
.L1008:
	mov	eax, 3
	ret
.L1009:
	mov	eax, 4
	ret
.L1010:
	mov	eax, 5
	ret
.L1011:
	mov	eax, 6
	ret
.L1012:
	mov	eax, 7
	ret
.L1013:
	mov	eax, 8
	ret
.L1014:
	mov	eax, 9
	ret
.L1015:
	mov	eax, 10
	ret
.L1016:
	mov	eax, 11
	ret
.L1018:
	mov	eax, 13
	ret
.L1019:
	mov	eax, 14
	ret
	.seh_endproc
	.p2align 4
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC20[rip]
	jnb	.L1027
	cvttss2si	eax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L1027:
	subss	xmm0, DWORD PTR .LC20[rip]
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
	je	.L1030
	.p2align 5
	.p2align 4
	.p2align 3
.L1032:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L1032
.L1030:
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
	je	.L1035
	test	edx, edx
	je	.L1035
	.p2align 5
	.p2align 4
	.p2align 3
.L1037:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r8d, eax
	shr	edx
	jne	.L1037
.L1035:
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
	jb	.L1043
	jmp	.L1044
	.p2align 4,,10
	.p2align 3
.L1046:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L1045
	test	eax, eax
	je	.L1045
.L1043:
	test	edx, edx
	jns	.L1046
.L1044:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L1049:
	cmp	ecx, edx
	jb	.L1048
	sub	ecx, edx
	or	r9d, eax
.L1048:
	shr	edx
	shr	eax
	jne	.L1049
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1045:
	xor	r9d, r9d
	test	eax, eax
	jne	.L1044
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
	ja	.L1064
	xor	eax, eax
	comiss	xmm0, xmm1
	seta	al
.L1064:
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
	ja	.L1067
	xor	eax, eax
	comisd	xmm0, xmm1
	seta	al
.L1067:
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
	js	.L1081
	je	.L1077
	xor	r11d, r11d
.L1074:
	mov	r8d, 1
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L1076:
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
	jne	.L1076
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmovne	r9d, eax
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1081:
	neg	edx
	mov	r11d, 1
	jmp	.L1074
	.p2align 4,,10
	.p2align 3
.L1077:
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
	jns	.L1083
	neg	ecx
	xor	eax, eax
	mov	r10d, 1
.L1083:
	test	edx, edx
	jns	.L1084
	neg	edx
	mov	r10d, eax
.L1084:
	mov	r9d, ecx
	mov	r8d, 1
	cmp	edx, ecx
	jb	.L1085
	jmp	.L1086
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1104:
	test	r8d, r8d
	je	.L1103
.L1085:
	add	edx, edx
	add	r8d, r8d
	cmp	edx, ecx
	jb	.L1104
	test	r8d, r8d
	je	.L1103
.L1086:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L1091:
	cmp	r9d, edx
	jb	.L1090
	sub	r9d, edx
	or	eax, r8d
.L1090:
	shr	edx
	shr	r8d
	jne	.L1091
	mov	edx, eax
	neg	edx
	test	r10d, r10d
	cmovne	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1103:
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
	jns	.L1106
	neg	ecx
	mov	r9d, 1
.L1106:
	mov	eax, edx
	mov	r8d, 1
	neg	eax
	cmovns	edx, eax
	mov	eax, ecx
	cmp	edx, ecx
	jb	.L1107
	jmp	.L1113
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L1126:
	test	r8d, r8d
	je	.L1125
.L1107:
	add	edx, edx
	add	r8d, r8d
	cmp	edx, ecx
	jb	.L1126
	test	r8d, r8d
	je	.L1125
	.p2align 4
	.p2align 4
	.p2align 3
.L1113:
	mov	ecx, eax
	sub	ecx, edx
	cmp	eax, edx
	cmovnb	eax, ecx
	shr	edx
	shr	r8d
	jne	.L1113
	mov	edx, eax
	neg	edx
	test	r9d, r9d
	cmovne	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1125:
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
	jb	.L1128
	jmp	.L1183
	.p2align 4,,10
	.p2align 3
.L1131:
	lea	r10d, [rax+rax]
	lea	edx, [r9+r9]
	cmp	r10w, r11w
	jnb	.L1130
	test	dx, dx
	je	.L1130
	mov	r9d, edx
	mov	eax, r10d
.L1128:
	test	ax, ax
	jns	.L1131
	xor	edx, edx
	cmp	cx, ax
	jb	.L1154
	mov	r11d, ecx
	mov	edx, r9d
	sub	r11d, eax
.L1154:
	mov	ecx, eax
	mov	ebx, r9d
	shr	cx
	shr	bx
	je	.L1171
.L1135:
	cmp	r11w, cx
	jb	.L1136
	sub	r11d, ecx
	or	edx, ebx
.L1136:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 2
	shr	r10w, 2
	je	.L1171
	cmp	r11w, cx
	jb	.L1137
	sub	r11d, ecx
	or	edx, r10d
.L1137:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 3
	shr	r10w, 3
	je	.L1171
	cmp	r11w, cx
	jb	.L1138
	sub	r11d, ecx
	or	edx, r10d
.L1138:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 4
	shr	r10w, 4
	je	.L1171
	cmp	r11w, cx
	jb	.L1139
	sub	r11d, ecx
	or	edx, r10d
.L1139:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 5
	shr	r10w, 5
	je	.L1171
	cmp	r11w, cx
	jb	.L1140
	sub	r11d, ecx
	or	edx, r10d
.L1140:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 6
	shr	r10w, 6
	je	.L1171
	cmp	r11w, cx
	jb	.L1141
	sub	r11d, ecx
	or	edx, r10d
.L1141:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 7
	shr	r10w, 7
	je	.L1171
	cmp	r11w, cx
	jnb	.L1184
.L1142:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 8
	shr	r10w, 8
	je	.L1171
	cmp	r11w, cx
	jnb	.L1185
.L1143:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 9
	shr	r10w, 9
	je	.L1171
	cmp	r11w, cx
	jnb	.L1186
.L1144:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 10
	shr	r10w, 10
	je	.L1171
	cmp	r11w, cx
	jnb	.L1187
.L1145:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 11
	shr	r10w, 11
	je	.L1171
	cmp	r11w, cx
	jnb	.L1188
.L1146:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 12
	shr	r10w, 12
	je	.L1171
	cmp	r11w, cx
	jb	.L1147
	sub	r11d, ecx
	or	edx, r10d
.L1147:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 13
	shr	r10w, 13
	je	.L1171
	cmp	r11w, cx
	jb	.L1148
	sub	r11d, ecx
	or	edx, r10d
.L1148:
	mov	ecx, eax
	mov	r10d, r9d
	shr	cx, 14
	shr	r10w, 14
	je	.L1171
	cmp	r11w, cx
	jb	.L1149
	sub	r11d, ecx
	or	edx, r10d
.L1149:
	shr	ax, 15
	test	r9w, r9w
	jns	.L1171
	xor	ebx, ebx
	cmp	r11w, ax
	jb	.L1133
	mov	ebx, r11d
	or	edx, 1
	sub	ebx, eax
	jmp	.L1133
	.p2align 4,,10
	.p2align 3
.L1171:
	mov	ebx, r11d
.L1133:
	test	r8d, r8d
	cmove	ebx, edx
	mov	eax, ebx
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L1130:
	mov	ebx, ecx
	test	dx, dx
	je	.L1133
	cmp	cx, r10w
	jb	.L1134
	mov	r11d, ecx
	mov	ebx, r9d
	and	ax, 32767
	mov	r9d, edx
	mov	ecx, eax
	sub	r11d, r10d
	and	bx, 32767
	mov	eax, r10d
	jmp	.L1135
	.p2align 4,,10
	.p2align 3
.L1184:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1142
	.p2align 4,,10
	.p2align 3
.L1134:
	mov	ebx, r9d
	and	ax, 32767
	mov	r9d, edx
	xor	edx, edx
	mov	ecx, eax
	and	bx, 32767
	mov	eax, r10d
	jmp	.L1135
	.p2align 4,,10
	.p2align 3
.L1185:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1143
	.p2align 4,,10
	.p2align 3
.L1186:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1144
	.p2align 4,,10
	.p2align 3
.L1187:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1145
	.p2align 4,,10
	.p2align 3
.L1188:
	sub	r11d, ecx
	or	edx, r10d
	jmp	.L1146
.L1183:
	sete	dl
	mov	ebx, 0
	cmovne	ebx, ecx
	movzx	edx, dl
	jmp	.L1133
	.seh_endproc
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jb	.L1190
	jmp	.L1191
	.p2align 4,,10
	.p2align 3
.L1193:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L1192
	test	eax, eax
	je	.L1192
.L1190:
	test	edx, edx
	jns	.L1193
.L1191:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L1196:
	cmp	ecx, edx
	jb	.L1195
	sub	ecx, edx
	or	r9d, eax
.L1195:
	shr	edx
	shr	eax
	jne	.L1196
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L1192:
	xor	r9d, r9d
	test	eax, eax
	jne	.L1191
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
	je	.L1212
	lea	ecx, -32[rdx]
	xor	eax, eax
	sal	r8d, cl
.L1213:
	sal	r8, 32
	or	rax, r8
.L1211:
	ret
	.p2align 4,,10
	.p2align 3
.L1212:
	mov	rax, rcx
	test	edx, edx
	je	.L1211
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
	jmp	.L1213
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
	je	.L1218
	lea	ecx, -64[rdx]
	xor	r9d, r9d
	sal	rax, cl
.L1219:
	mov	rcx, rax
	mov	rax, r9
	mov	rdx, rcx
.L1220:
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
.L1218:
	test	edx, edx
	je	.L1221
	mov	r9, rax
	mov	ecx, edx
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	mov	ecx, edx
	sal	r8, cl
	or	rax, r8
	jmp	.L1219
	.p2align 4,,10
	.p2align 3
.L1221:
	mov	rdx, r8
	jmp	.L1220
	.seh_endproc
	.p2align 4
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L1223
	sar	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	sar	r8d, cl
	sar	eax, 31
.L1224:
	sal	rax, 32
	or	rax, r8
.L1222:
	ret
	.p2align 4,,10
	.p2align 3
.L1223:
	mov	rax, rcx
	test	edx, edx
	je	.L1222
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
	jmp	.L1224
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
	je	.L1229
	mov	r10, rax
	lea	ecx, -64[rdx]
	sar	r10, 63
	sar	rax, cl
.L1230:
	mov	rdx, rax
	mov	rax, r10
.L1231:
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
.L1229:
	test	edx, edx
	je	.L1232
	mov	r10, rax
	mov	ecx, edx
	sar	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1230
	.p2align 4,,10
	.p2align 3
.L1232:
	mov	rdx, r8
	jmp	.L1231
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
	jl	.L1237
	mov	eax, 2
	jg	.L1237
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1237
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1237:
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
	jl	.L1243
	mov	eax, 1
	jg	.L1243
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1243
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1243:
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
	jl	.L1248
	mov	eax, 2
	jg	.L1248
	xor	eax, eax
	cmp	r8, r9
	jb	.L1248
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1248:
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
	jne	.L1257
	xor	eax, eax
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	mov	edx, 0
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L1257:
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
	je	.L1261
	shr	r8, 32
	lea	ecx, -32[rdx]
	xor	eax, eax
	shr	r8d, cl
.L1262:
	sal	rax, 32
	or	rax, r8
.L1260:
	ret
	.p2align 4,,10
	.p2align 3
.L1261:
	mov	rax, rcx
	test	edx, edx
	je	.L1260
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
	jmp	.L1262
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
	je	.L1267
	lea	ecx, -64[rdx]
	xor	r10d, r10d
	shr	rax, cl
.L1268:
	mov	rdx, rax
	mov	rax, r10
.L1269:
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
.L1267:
	test	edx, edx
	je	.L1270
	mov	r10, rax
	mov	ecx, edx
	shr	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L1268
	.p2align 4,,10
	.p2align 3
.L1270:
	mov	rdx, r8
	jmp	.L1269
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
	movsd	xmm2, QWORD PTR .LC19[rip]
	movapd	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1284
	.p2align 4
	.p2align 3
.L1286:
	mulsd	xmm1, xmm0
.L1284:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1285
	mulsd	xmm0, xmm0
	test	al, 1
	jne	.L1286
.L1290:
	mulsd	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1286
	jmp	.L1290
	.p2align 4,,10
	.p2align 3
.L1285:
	test	edx, edx
	jns	.L1283
	divsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L1283:
	movapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	.seh_endprologue
	movss	xmm2, DWORD PTR .LC21[rip]
	movaps	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1292
	.p2align 4
	.p2align 3
.L1294:
	mulss	xmm1, xmm0
.L1292:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1293
	mulss	xmm0, xmm0
	test	al, 1
	jne	.L1294
.L1298:
	mulss	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1294
	jmp	.L1298
	.p2align 4,,10
	.p2align 3
.L1293:
	test	edx, edx
	jns	.L1291
	divss	xmm2, xmm1
	movaps	xmm1, xmm2
.L1291:
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
	jb	.L1299
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L1299
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1299
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1299:
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
	jb	.L1305
	mov	eax, 1
	cmp	r9d, r8d
	jb	.L1305
	mov	eax, -1
	cmp	ecx, edx
	jb	.L1305
	xor	eax, eax
	cmp	edx, ecx
	setb	al
.L1305:
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
	jb	.L1310
	mov	eax, 2
	cmp	rdx, rcx
	jb	.L1310
	xor	eax, eax
	cmp	r8, r9
	jb	.L1310
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1310:
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
	.align 4
.LC6:
	.long	-8388609
	.align 4
.LC7:
	.long	2139095039
	.align 8
.LC8:
	.long	-1
	.long	-1048577
	.align 8
.LC9:
	.long	-1
	.long	2146435071
	.align 16
.LC10:
	.long	-1
	.long	-1
	.long	65534
	.long	0
	.align 16
.LC11:
	.long	-1
	.long	-1
	.long	32766
	.long	0
	.set	.LC12,.LC14+4
	.align 4
.LC13:
	.long	1056964608
	.align 8
.LC14:
	.long	0
	.long	1073741824
	.align 8
.LC15:
	.long	0
	.long	1071644672
	.align 16
.LC16:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC17:
	.long	0
	.long	-1074790400
	.align 8
.LC18:
	.long	0
	.long	-1075838976
	.align 8
.LC19:
	.long	0
	.long	1072693248
	.align 4
.LC20:
	.long	1191182336
	.align 4
.LC21:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	memset;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
