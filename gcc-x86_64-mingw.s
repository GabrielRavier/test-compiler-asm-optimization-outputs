	.file	"mini-libc.c"
	.intel_syntax noprefix
	.text
	.globl	make_ti
	.def	make_ti;	.scl	2;	.type	32;	.endef
	.seh_proc	make_ti
make_ti:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	r9, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], r9
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	make_tu
	.def	make_tu;	.scl	2;	.type	32;	.endef
	.seh_proc	make_tu
make_tu:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	QWORD PTR 8[rsp], rcx
	mov	r9, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], r9
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	memmove
	.def	memmove;	.scl	2;	.type	32;	.endef
	.seh_proc	memmove
memmove:
	.seh_endprologue
	mov	rax, rcx
	cmp	rdx, rcx
	jnb	.L4
	test	r8, r8
	je	.L5
	.p2align 5
.L6:
	movzx	ecx, BYTE PTR -1[rdx+r8]
	mov	BYTE PTR -1[rax+r8], cl
	sub	r8, 1
	jne	.L6
.L5:
	ret
.L4:
	cmp	rcx, rdx
	je	.L5
	test	r8, r8
	je	.L5
	mov	r9d, 0
	.p2align 5
.L7:
	movzx	ecx, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rax+r9], cl
	add	r9, 1
	cmp	r9, r8
	jne	.L7
	jmp	.L5
	.seh_endproc
	.globl	memccpy
	.def	memccpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memccpy
memccpy:
	.seh_endprologue
	movzx	r8d, r8b
	mov	eax, 0
	test	r9, r9
	je	.L10
	.p2align 5
.L11:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], r10b
	movzx	r10d, r10b
	cmp	r8d, r10d
	je	.L18
	add	rdx, 1
	add	rcx, 1
	sub	r9, 1
	jne	.L11
	mov	eax, 0
	jmp	.L10
.L18:
	lea	rax, 1[rcx]
.L10:
	ret
	.seh_endproc
	.globl	memchr
	.def	memchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memchr
memchr:
	.seh_endprologue
	movzx	edx, dl
	mov	eax, 0
	test	r8, r8
	je	.L19
	.p2align 5
.L20:
	movzx	eax, BYTE PTR [rcx]
	cmp	edx, eax
	je	.L25
	add	rcx, 1
	sub	r8, 1
	jne	.L20
	mov	eax, 0
	jmp	.L19
.L25:
	mov	rax, rcx
.L19:
	ret
	.seh_endproc
	.globl	memcmp
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	memcmp
memcmp:
	.seh_endprologue
	mov	eax, 0
	test	r8, r8
	je	.L26
	.p2align 5
.L27:
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	jne	.L34
	add	rcx, 1
	add	rdx, 1
	sub	r8, 1
	jne	.L27
	mov	eax, 0
	jmp	.L26
.L34:
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
.L26:
	ret
	.seh_endproc
	.globl	memcpy
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memcpy
memcpy:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L36
	mov	r9d, 0
	.p2align 5
.L37:
	movzx	r10d, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rax+r9], r10b
	add	r9, 1
	cmp	r9, r8
	jne	.L37
.L36:
	ret
	.seh_endproc
	.globl	memrchr
	.def	memrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memrchr
memrchr:
	.seh_endprologue
	movzx	edx, dl
	lea	rax, -1[rcx+r8]
	sub	rcx, 1
	.p2align 5
.L40:
	cmp	rax, rcx
	je	.L43
	mov	r9, rax
	movzx	r8d, BYTE PTR [rax]
	sub	rax, 1
	cmp	edx, r8d
	jne	.L40
	jmp	.L39
.L43:
	mov	r9d, 0
.L39:
	mov	rax, r9
	ret
	.seh_endproc
	.globl	memset
	.def	memset;	.scl	2;	.type	32;	.endef
	.seh_proc	memset
memset:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L45
	add	r8, rcx
	mov	r9, rcx
	.p2align 4
.L46:
	mov	BYTE PTR [r9], dl
	add	r9, 1
	cmp	r9, r8
	jne	.L46
.L45:
	ret
	.seh_endproc
	.globl	stpcpy
	.def	stpcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	stpcpy
stpcpy:
	.seh_endprologue
	mov	rax, rcx
	movzx	ecx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], cl
	test	cl, cl
	je	.L49
	.p2align 5
.L50:
	add	rdx, 1
	add	rax, 1
	movzx	ecx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], cl
	test	cl, cl
	jne	.L50
.L49:
	ret
	.seh_endproc
	.globl	strchrnul
	.def	strchrnul;	.scl	2;	.type	32;	.endef
	.seh_proc	strchrnul
strchrnul:
	.seh_endprologue
	mov	rax, rcx
	movzx	edx, dl
	cmp	BYTE PTR [rcx], 0
	je	.L52
	.p2align 4
.L53:
	movzx	ecx, BYTE PTR [rax]
	cmp	edx, ecx
	je	.L52
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L53
.L52:
	ret
	.seh_endproc
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
	.seh_endprologue
	mov	rax, rcx
	.p2align 5
.L60:
	movzx	ecx, BYTE PTR [rax]
	movsx	r8d, cl
	cmp	edx, r8d
	je	.L59
	add	rax, 1
	test	cl, cl
	jne	.L60
	mov	eax, 0
.L59:
	ret
	.seh_endproc
	.globl	strcmp
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strcmp
strcmp:
	.seh_endprologue
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	jne	.L64
	.p2align 5
.L63:
	cmp	BYTE PTR [rcx], 0
	je	.L64
	add	rcx, 1
	add	rdx, 1
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	je	.L63
.L64:
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
	ret
	.seh_endproc
	.globl	strlen
	.def	strlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strlen
strlen:
	.seh_endprologue
	cmp	BYTE PTR [rcx], 0
	je	.L70
	mov	rax, rcx
	.p2align 4
.L69:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L69
.L68:
	sub	rax, rcx
	ret
.L70:
	mov	rax, rcx
	jmp	.L68
	.seh_endproc
	.globl	strncmp
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strncmp
strncmp:
	.seh_endprologue
	lea	r10, -1[r8]
	mov	eax, 0
	test	r8, r8
	je	.L72
	mov	rax, rcx
	add	r10, rcx
	cmp	BYTE PTR [rcx], 0
	je	.L75
.L74:
	movzx	ecx, BYTE PTR [rdx]
	cmp	rax, r10
	setne	r9b
	test	cl, cl
	setne	r8b
	test	r9b, r8b
	je	.L75
	cmp	cl, BYTE PTR [rax]
	jne	.L75
	add	rax, 1
	add	rdx, 1
	cmp	BYTE PTR [rax], 0
	jne	.L74
.L75:
	movzx	eax, BYTE PTR [rax]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
.L72:
	ret
	.seh_endproc
	.globl	swab
	.def	swab;	.scl	2;	.type	32;	.endef
	.seh_proc	swab
swab:
	.seh_endprologue
	cmp	r8, 1
	jle	.L80
	sub	r8, 2
	shr	r8
	lea	r8, 2[rcx+r8*2]
	.p2align 5
.L82:
	movzx	eax, BYTE PTR 1[rcx]
	mov	BYTE PTR [rdx], al
	movzx	eax, BYTE PTR [rcx]
	mov	BYTE PTR 1[rdx], al
	add	rdx, 2
	add	rcx, 2
	cmp	rcx, r8
	jne	.L82
.L80:
	ret
	.seh_endproc
	.globl	isalpha
	.def	isalpha;	.scl	2;	.type	32;	.endef
	.seh_proc	isalpha
isalpha:
	.seh_endprologue
	or	ecx, 32
	sub	ecx, 97
	cmp	ecx, 25
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	isascii
	.def	isascii;	.scl	2;	.type	32;	.endef
	.seh_proc	isascii
isascii:
	.seh_endprologue
	cmp	ecx, 127
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	isblank
	.def	isblank;	.scl	2;	.type	32;	.endef
	.seh_proc	isblank
isblank:
	.seh_endprologue
	cmp	ecx, 32
	sete	dl
	cmp	ecx, 9
	sete	al
	or	eax, edx
	movzx	eax, al
	ret
	.seh_endproc
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
	.globl	isdigit
	.def	isdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	isdigit
isdigit:
	.seh_endprologue
	sub	ecx, 48
	cmp	ecx, 9
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	isgraph
	.def	isgraph;	.scl	2;	.type	32;	.endef
	.seh_proc	isgraph
isgraph:
	.seh_endprologue
	sub	ecx, 33
	cmp	ecx, 93
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	islower
	.def	islower;	.scl	2;	.type	32;	.endef
	.seh_proc	islower
islower:
	.seh_endprologue
	sub	ecx, 97
	cmp	ecx, 25
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	isprint
	.def	isprint;	.scl	2;	.type	32;	.endef
	.seh_proc	isprint
isprint:
	.seh_endprologue
	sub	ecx, 32
	cmp	ecx, 94
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	isspace
	.def	isspace;	.scl	2;	.type	32;	.endef
	.seh_proc	isspace
isspace:
	.seh_endprologue
	cmp	ecx, 32
	sete	dl
	sub	ecx, 9
	cmp	ecx, 4
	setbe	al
	or	eax, edx
	movzx	eax, al
	ret
	.seh_endproc
	.globl	isupper
	.def	isupper;	.scl	2;	.type	32;	.endef
	.seh_proc	isupper
isupper:
	.seh_endprologue
	sub	ecx, 65
	cmp	ecx, 25
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	iswcntrl
	.def	iswcntrl;	.scl	2;	.type	32;	.endef
	.seh_proc	iswcntrl
iswcntrl:
	.seh_endprologue
	cmp	cx, 31
	setbe	al
	movzx	ecx, cx
	lea	edx, -127[rcx]
	cmp	edx, 32
	setbe	r8b
	mov	edx, 1
	or	al, r8b
	jne	.L94
	lea	eax, -8232[rcx]
	cmp	eax, 1
	jbe	.L94
	sub	ecx, 65529
	cmp	ecx, 2
	setbe	dl
	movzx	edx, dl
.L94:
	mov	eax, edx
	ret
	.seh_endproc
	.globl	iswdigit
	.def	iswdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	iswdigit
iswdigit:
	.seh_endprologue
	movzx	ecx, cx
	sub	ecx, 48
	cmp	ecx, 9
	setbe	al
	movzx	eax, al
	ret
	.seh_endproc
	.globl	iswprint
	.def	iswprint;	.scl	2;	.type	32;	.endef
	.seh_proc	iswprint
iswprint:
	.seh_endprologue
	cmp	cx, 254
	jbe	.L105
	cmp	cx, 8231
	setbe	r8b
	movzx	edx, cx
	lea	eax, -8234[rdx]
	cmp	eax, 47061
	setbe	r9b
	mov	eax, 1
	or	r8b, r9b
	jne	.L99
	lea	r8d, -57344[rdx]
	cmp	r8d, 8184
	jbe	.L99
	sub	edx, 65532
	mov	eax, 0
	cmp	edx, 1048579
	ja	.L99
	not	ecx
	test	ecx, 65534
	setne	al
	movzx	eax, al
	jmp	.L99
.L105:
	lea	eax, 1[rcx]
	and	eax, 127
	cmp	eax, 32
	setg	al
	movzx	eax, al
.L99:
	ret
	.seh_endproc
	.globl	iswxdigit
	.def	iswxdigit;	.scl	2;	.type	32;	.endef
	.seh_proc	iswxdigit
iswxdigit:
	.seh_endprologue
	movzx	eax, cx
	sub	eax, 48
	mov	edx, 1
	cmp	eax, 9
	jbe	.L106
	or	ecx, 32
	movzx	ecx, cx
	sub	ecx, 97
	cmp	ecx, 5
	setbe	dl
	movzx	edx, dl
.L106:
	mov	eax, edx
	ret
	.seh_endproc
	.globl	toascii
	.def	toascii;	.scl	2;	.type	32;	.endef
	.seh_proc	toascii
toascii:
	.seh_endprologue
	mov	eax, ecx
	and	eax, 127
	ret
	.seh_endproc
	.globl	fdim
	.def	fdim;	.scl	2;	.type	32;	.endef
	.seh_proc	fdim
fdim:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L110
	ucomisd	xmm1, xmm1
	jp	.L114
	comisd	xmm0, xmm1
	jbe	.L117
	subsd	xmm0, xmm1
.L110:
	ret
.L114:
	movapd	xmm0, xmm1
	jmp	.L110
.L117:
	pxor	xmm0, xmm0
	jmp	.L110
	.seh_endproc
	.globl	fdimf
	.def	fdimf;	.scl	2;	.type	32;	.endef
	.seh_proc	fdimf
fdimf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L118
	ucomiss	xmm1, xmm1
	jp	.L122
	comiss	xmm0, xmm1
	jbe	.L125
	subss	xmm0, xmm1
.L118:
	ret
.L122:
	movaps	xmm0, xmm1
	jmp	.L118
.L125:
	pxor	xmm0, xmm0
	jmp	.L118
	.seh_endproc
	.globl	fmax
	.def	fmax;	.scl	2;	.type	32;	.endef
	.seh_proc	fmax
fmax:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L131
	ucomisd	xmm1, xmm1
	jp	.L126
	movmskpd	eax, xmm0
	and	eax, 1
	movmskpd	edx, xmm1
	and	edx, 1
	cmp	eax, edx
	je	.L128
	test	eax, eax
	je	.L126
	movapd	xmm0, xmm1
	jmp	.L126
.L128:
	movapd	xmm2, xmm1
	maxsd	xmm2, xmm0
	movapd	xmm0, xmm2
.L126:
	ret
.L131:
	movapd	xmm0, xmm1
	jmp	.L126
	.seh_endproc
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L139
	ucomiss	xmm1, xmm1
	jp	.L134
	movd	eax, xmm0
	and	eax, -2147483648
	movd	edx, xmm1
	and	edx, -2147483648
	cmp	eax, edx
	je	.L136
	test	eax, eax
	je	.L134
	movaps	xmm0, xmm1
	jmp	.L134
.L136:
	movaps	xmm2, xmm1
	maxss	xmm2, xmm0
	movaps	xmm0, xmm2
.L134:
	ret
.L139:
	movaps	xmm0, xmm1
	jmp	.L134
	.seh_endproc
	.globl	fmaxl
	.def	fmaxl;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxl
fmaxl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L148
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L149
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	and	edx, 512
	fxam
	fnstsw	ax
	and	eax, 512
	cmp	edx, eax
	je	.L146
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
.L142:
	mov	rax, rcx
	ret
.L148:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L142
.L149:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L142
.L146:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	jmp	.L142
	.seh_endproc
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L150
	ucomisd	xmm1, xmm1
	jp	.L156
	movmskpd	eax, xmm0
	and	eax, 1
	movmskpd	edx, xmm1
	and	edx, 1
	cmp	eax, edx
	je	.L152
	test	eax, eax
	je	.L150
	movapd	xmm1, xmm0
	jmp	.L150
.L152:
	movapd	xmm2, xmm0
	minsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L150:
	movapd	xmm0, xmm1
	ret
.L156:
	movapd	xmm1, xmm0
	jmp	.L150
	.seh_endproc
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L158
	ucomiss	xmm1, xmm1
	jp	.L164
	movd	eax, xmm0
	and	eax, -2147483648
	movd	edx, xmm1
	and	edx, -2147483648
	cmp	eax, edx
	je	.L160
	test	eax, eax
	je	.L158
	movaps	xmm1, xmm0
	jmp	.L158
.L160:
	movaps	xmm2, xmm0
	minss	xmm2, xmm1
	movaps	xmm1, xmm2
.L158:
	movaps	xmm0, xmm1
	ret
.L164:
	movaps	xmm1, xmm0
	jmp	.L158
	.seh_endproc
	.globl	fminl
	.def	fminl;	.scl	2;	.type	32;	.endef
	.seh_proc	fminl
fminl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L172
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L173
	fxch	st(1)
	fxam
	fnstsw	ax
	fxch	st(1)
	mov	edx, eax
	and	edx, 512
	fxam
	fnstsw	ax
	and	eax, 512
	cmp	edx, eax
	je	.L170
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
.L166:
	mov	rax, rcx
	ret
.L172:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L166
.L173:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L166
.L170:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	jmp	.L166
	.seh_endproc
	.section .rdata,"dr"
	.align 32
digits:
	.ascii "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0"
	.text
	.globl	l64a
	.def	l64a;	.scl	2;	.type	32;	.endef
	.seh_proc	l64a
l64a:
	.seh_endprologue
	mov	eax, ecx
	lea	rdx, s.0[rip]
	test	ecx, ecx
	je	.L175
	lea	r8, digits[rip]
	.p2align 5
.L176:
	mov	ecx, eax
	and	ecx, 63
	movzx	ecx, BYTE PTR [r8+rcx]
	mov	BYTE PTR [rdx], cl
	add	rdx, 1
	shr	eax, 6
	jne	.L176
.L175:
	mov	BYTE PTR [rdx], 0
	lea	rax, s.0[rip]
	ret
	.seh_endproc
.lcomm seed,8,8
	.globl	srand
	.def	srand;	.scl	2;	.type	32;	.endef
	.seh_proc	srand
srand:
	.seh_endprologue
	lea	eax, -1[rcx]
	mov	QWORD PTR seed[rip], rax
	ret
	.seh_endproc
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
	.globl	insque
	.def	insque;	.scl	2;	.type	32;	.endef
	.seh_proc	insque
insque:
	.seh_endprologue
	test	rdx, rdx
	je	.L184
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	QWORD PTR [rdx], rcx
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L181
	mov	QWORD PTR 8[rax], rcx
.L181:
	ret
.L184:
	mov	QWORD PTR 8[rcx], 0
	mov	QWORD PTR [rcx], 0
	jmp	.L181
	.seh_endproc
	.globl	remque
	.def	remque;	.scl	2;	.type	32;	.endef
	.seh_proc	remque
remque:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L186
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L186:
	mov	rax, QWORD PTR 8[rcx]
	test	rax, rax
	je	.L185
	mov	rdx, QWORD PTR [rcx]
	mov	QWORD PTR [rax], rdx
.L185:
	ret
	.seh_endproc
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
	mov	r12, rcx
	mov	QWORD PTR 120[rsp], rdx
	mov	r15, r8
	mov	rbp, r9
	mov	r14, QWORD PTR 144[rsp]
	mov	rdi, QWORD PTR [r8]
	test	rdi, rdi
	je	.L189
	mov	rbx, rdx
	mov	esi, 0
.L191:
	mov	r13, rbx
	mov	rdx, rbx
	mov	rcx, r12
	call	r14
	test	eax, eax
	je	.L188
	add	rsi, 1
	add	rbx, rbp
	cmp	rsi, rdi
	jne	.L191
.L189:
	lea	rax, 1[rdi]
	mov	QWORD PTR [r15], rax
	imul	rdi, rbp
	add	rdi, QWORD PTR 120[rsp]
	mov	rcx, rdi
	mov	r8, rbp
	mov	rdx, r12
	call	memcpy
	mov	r13, rdi
.L188:
	mov	rax, r13
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
	.seh_endproc
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
	mov	rdi, rcx
	mov	rbp, r9
	mov	r13, QWORD PTR 128[rsp]
	mov	r12, QWORD PTR [r8]
	test	r12, r12
	je	.L196
	mov	rbx, rdx
	mov	esi, 0
.L195:
	mov	r14, rbx
	mov	rdx, rbx
	mov	rcx, rdi
	call	r13
	test	eax, eax
	je	.L193
	add	rsi, 1
	add	rbx, rbp
	cmp	rsi, r12
	jne	.L195
	mov	r14d, 0
.L193:
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
.L196:
	mov	r14d, 0
	jmp	.L193
	.seh_endproc
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
	.globl	atoi
	.def	atoi;	.scl	2;	.type	32;	.endef
	.seh_proc	atoi
atoi:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, rcx
	jmp	.L200
.L201:
	add	rbx, 1
.L200:
	movsx	esi, BYTE PTR [rbx]
	mov	ecx, esi
	call	isspace
	test	eax, eax
	jne	.L201
	cmp	esi, 43
	je	.L207
	mov	ecx, eax
	cmp	esi, 45
	jne	.L203
	mov	ecx, 1
.L202:
	add	rbx, 1
.L203:
	movsx	edx, BYTE PTR [rbx]
	sub	edx, 48
	cmp	edx, 9
	ja	.L204
	.p2align 5
.L205:
	lea	eax, [rax+rax*4]
	add	eax, eax
	add	rbx, 1
	movsx	edx, BYTE PTR -1[rbx]
	sub	edx, 48
	sub	eax, edx
	movsx	edx, BYTE PTR [rbx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L205
.L204:
	mov	edx, eax
	neg	edx
	test	ecx, ecx
	cmove	eax, edx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
.L207:
	mov	ecx, eax
	jmp	.L202
	.seh_endproc
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, rcx
	jmp	.L211
.L212:
	add	rbx, 1
.L211:
	movsx	esi, BYTE PTR [rbx]
	mov	ecx, esi
	call	isspace
	test	eax, eax
	jne	.L212
	cmp	esi, 43
	je	.L218
	mov	ecx, eax
	cmp	esi, 45
	jne	.L214
	mov	ecx, 1
.L213:
	add	rbx, 1
.L214:
	movsx	edx, BYTE PTR [rbx]
	sub	edx, 48
	cmp	edx, 9
	ja	.L215
	.p2align 5
.L216:
	lea	eax, [rax+rax*4]
	add	eax, eax
	add	rbx, 1
	movsx	edx, BYTE PTR -1[rbx]
	sub	edx, 48
	sub	eax, edx
	movsx	edx, BYTE PTR [rbx]
	sub	edx, 48
	cmp	edx, 9
	jbe	.L216
.L215:
	mov	edx, eax
	neg	edx
	test	ecx, ecx
	cmove	eax, edx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
.L218:
	mov	ecx, eax
	jmp	.L213
	.seh_endproc
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rbx, rcx
	jmp	.L222
.L223:
	add	rbx, 1
.L222:
	movsx	esi, BYTE PTR [rbx]
	mov	ecx, esi
	call	isspace
	test	eax, eax
	jne	.L223
	cmp	esi, 43
	je	.L224
	cmp	esi, 45
	jne	.L225
	mov	eax, 1
.L224:
	add	rbx, 1
.L225:
	movsx	edx, BYTE PTR [rbx]
	sub	edx, 48
	cmp	edx, 9
	ja	.L229
	mov	edx, 0
	.p2align 6
.L227:
	lea	rdx, [rdx+rdx*4]
	add	rdx, rdx
	add	rbx, 1
	movsx	ecx, BYTE PTR -1[rbx]
	sub	ecx, 48
	movsx	rcx, ecx
	sub	rdx, rcx
	movsx	ecx, BYTE PTR [rbx]
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L227
.L226:
	mov	rcx, rdx
	neg	rcx
	test	eax, eax
	cmove	rdx, rcx
	mov	rax, rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
.L229:
	mov	edx, 0
	jmp	.L226
	.seh_endproc
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
	mov	r13, rcx
	mov	r12, rdx
	mov	rbx, r8
	mov	rbp, r9
	mov	r14, QWORD PTR 128[rsp]
	test	r8, r8
	jne	.L234
	mov	esi, 0
	jmp	.L231
.L236:
	mov	rbx, rdi
.L233:
	test	rbx, rbx
	je	.L238
.L234:
	mov	rdi, rbx
	shr	rdi
	mov	rsi, rdi
	imul	rsi, rbp
	add	rsi, r12
	mov	rdx, rsi
	mov	rcx, r13
	call	r14
	test	eax, eax
	js	.L236
	jle	.L231
	lea	r12, [rsi+rbp]
	sub	rbx, 1
	sub	rbx, rdi
	jmp	.L233
.L238:
	mov	esi, 0
.L231:
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
	.seh_endproc
	.globl	bsearch_r
	.def	bsearch_r;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch_r
bsearch_r:
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
	mov	r12, rcx
	mov	rbp, rdx
	mov	rdi, r9
	mov	r14, QWORD PTR 128[rsp]
	mov	r13, QWORD PTR 136[rsp]
	mov	esi, r8d
	test	r8d, r8d
	jne	.L242
	mov	ebx, 0
	jmp	.L239
.L241:
	sar	esi
	je	.L245
.L242:
	mov	ebx, esi
	sar	ebx
	movsx	rbx, ebx
	imul	rbx, rdi
	add	rbx, rbp
	mov	r8, r13
	mov	rdx, rbx
	mov	rcx, r12
	call	r14
	test	eax, eax
	je	.L239
	jle	.L241
	lea	rbp, [rbx+rdi]
	sub	esi, 1
	jmp	.L241
.L245:
	mov	ebx, 0
.L239:
	mov	rax, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
	.seh_endproc
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
	.globl	imaxdiv
	.def	imaxdiv;	.scl	2;	.type	32;	.endef
	.seh_proc	imaxdiv
imaxdiv:
	.seh_endprologue
	mov	rax, rdx
	cqo
	idiv	r8
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	rax, rcx
	ret
	.seh_endproc
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
	.globl	lldiv
	.def	lldiv;	.scl	2;	.type	32;	.endef
	.seh_proc	lldiv
lldiv:
	.seh_endprologue
	mov	rax, rdx
	cqo
	idiv	r8
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	rax, rcx
	ret
	.seh_endproc
	.globl	wcschr
	.def	wcschr;	.scl	2;	.type	32;	.endef
	.seh_proc	wcschr
wcschr:
	.seh_endprologue
	mov	eax, 0
	cmp	WORD PTR [rcx], 0
	je	.L253
	.p2align 4
.L254:
	cmp	dx, WORD PTR [rcx]
	je	.L260
	add	rcx, 2
	cmp	WORD PTR [rcx], 0
	jne	.L254
	mov	rax, rcx
	jmp	.L256
.L260:
	mov	rax, rcx
.L256:
	cmp	WORD PTR [rax], 0
	mov	edx, 0
	cmove	rax, rdx
.L253:
	ret
	.seh_endproc
	.globl	wcscmp
	.def	wcscmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscmp
wcscmp:
	.seh_endprologue
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L263
.L262:
	cmp	WORD PTR [rcx], 0
	je	.L263
	cmp	WORD PTR [rdx], 0
	je	.L263
	add	rcx, 2
	add	rdx, 2
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	je	.L262
.L263:
	movzx	ecx, WORD PTR [rcx]
	movzx	edx, WORD PTR [rdx]
	mov	eax, -1
	cmp	cx, dx
	jb	.L261
	cmp	dx, cx
	setb	al
	movzx	eax, al
.L261:
	ret
	.seh_endproc
	.globl	wcscpy
	.def	wcscpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscpy
wcscpy:
	.seh_endprologue
	mov	rax, rcx
	mov	r8d, 0
	.p2align 5
.L269:
	movzx	r9d, WORD PTR [rdx+r8]
	mov	WORD PTR [rax+r8], r9w
	add	r8, 2
	test	r9w, r9w
	jne	.L269
	ret
	.seh_endproc
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	cmp	WORD PTR [rcx], 0
	je	.L274
	mov	rax, rcx
	.p2align 4
.L273:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L273
.L272:
	sub	rax, rcx
	sar	rax
	ret
.L274:
	mov	rax, rcx
	jmp	.L272
	.seh_endproc
	.globl	wcsncmp
	.def	wcsncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcsncmp
wcsncmp:
	.seh_endprologue
	mov	eax, 0
	test	r8, r8
	je	.L276
.L277:
	movzx	eax, WORD PTR [rcx]
	cmp	ax, WORD PTR [rdx]
	jne	.L279
	test	ax, ax
	je	.L279
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	jne	.L277
	mov	eax, 0
	jmp	.L276
.L281:
	cmp	ax, cx
	setb	al
	movzx	eax, al
.L276:
	ret
.L279:
	movzx	ecx, WORD PTR [rcx]
	movzx	eax, WORD PTR [rdx]
	cmp	cx, ax
	jnb	.L281
	mov	eax, -1
	jmp	.L276
	.seh_endproc
	.globl	wmemchr
	.def	wmemchr;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemchr
wmemchr:
	.seh_endprologue
	mov	eax, 0
	test	r8, r8
	je	.L284
	.p2align 4
.L285:
	cmp	dx, WORD PTR [rcx]
	je	.L290
	add	rcx, 2
	sub	r8, 1
	jne	.L285
	mov	eax, 0
	jmp	.L284
.L290:
	mov	rax, rcx
.L284:
	ret
	.seh_endproc
	.globl	wmemcmp
	.def	wmemcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcmp
wmemcmp:
	.seh_endprologue
	mov	eax, 0
	test	r8, r8
	je	.L291
	.p2align 5
.L292:
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L300
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	jne	.L292
	mov	eax, 0
.L291:
	ret
.L296:
	cmp	ax, cx
	setb	al
	movzx	eax, al
	jmp	.L291
.L300:
	movzx	ecx, WORD PTR [rcx]
	movzx	eax, WORD PTR [rdx]
	cmp	cx, ax
	jnb	.L296
	mov	eax, -1
	jmp	.L291
	.seh_endproc
	.globl	wmemcpy
	.def	wmemcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcpy
wmemcpy:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L302
	mov	r9d, 0
	.p2align 5
.L303:
	movzx	r10d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], r10w
	add	r9, 1
	cmp	r9, r8
	jne	.L303
.L302:
	ret
	.seh_endproc
	.globl	wmemmove
	.def	wmemmove;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemmove
wmemmove:
	.seh_endprologue
	mov	rax, rcx
	cmp	rcx, rdx
	je	.L306
	mov	r9, rcx
	sub	r9, rdx
	lea	rcx, [r8+r8]
	cmp	r9, rcx
	jb	.L307
	mov	r9d, 0
	test	r8, r8
	je	.L306
	.p2align 5
.L308:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	add	r9, 1
	cmp	r9, r8
	jne	.L308
	jmp	.L306
.L307:
	lea	r9, -1[r8]
	test	r8, r8
	je	.L306
	.p2align 5
.L309:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	sub	r9, 1
	cmp	r9, -1
	jne	.L309
.L306:
	ret
	.seh_endproc
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L315
	mov	r9d, 0
	.p2align 4
.L316:
	mov	WORD PTR [rax+r9*2], dx
	add	r9, 1
	cmp	r9, r8
	jne	.L316
.L315:
	ret
	.seh_endproc
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	.seh_endprologue
	cmp	rcx, rdx
	jnb	.L319
	test	r8, r8
	je	.L318
	.p2align 5
.L321:
	movzx	eax, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[rdx+r8], al
	sub	r8, 1
	jne	.L321
.L318:
	ret
.L319:
	je	.L318
	test	r8, r8
	je	.L318
	mov	eax, 0
	.p2align 5
.L322:
	movzx	r9d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx+rax], r9b
	add	rax, 1
	cmp	rax, r8
	jne	.L322
	jmp	.L318
	.seh_endproc
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
	.globl	rotl_sz
	.def	rotl_sz;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl_sz
rotl_sz:
	.seh_endprologue
	mov	rax, rcx
	mov	r8, rcx
	mov	ecx, edx
	sal	r8, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	or	rax, r8
	ret
	.seh_endproc
	.globl	rotr_sz
	.def	rotr_sz;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr_sz
rotr_sz:
	.seh_endprologue
	mov	rax, rcx
	mov	r8, rcx
	mov	ecx, edx
	shr	r8, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	or	rax, r8
	ret
	.seh_endproc
	.globl	rotl16
	.def	rotl16;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl16
rotl16:
	.seh_endprologue
	movzx	eax, cx
	mov	r8d, eax
	mov	ecx, edx
	sal	r8d, cl
	mov	ecx, 16
	sub	ecx, edx
	shr	eax, cl
	or	eax, r8d
	ret
	.seh_endproc
	.globl	rotr16
	.def	rotr16;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr16
rotr16:
	.seh_endprologue
	movzx	eax, cx
	mov	r8d, eax
	mov	ecx, edx
	shr	r8d, cl
	mov	ecx, 16
	sub	ecx, edx
	sal	eax, cl
	or	eax, r8d
	ret
	.seh_endproc
	.globl	rotl8
	.def	rotl8;	.scl	2;	.type	32;	.endef
	.seh_proc	rotl8
rotl8:
	.seh_endprologue
	movzx	eax, cl
	mov	r8d, eax
	mov	ecx, edx
	sal	r8d, cl
	mov	ecx, 8
	sub	ecx, edx
	shr	eax, cl
	or	eax, r8d
	ret
	.seh_endproc
	.globl	rotr8
	.def	rotr8;	.scl	2;	.type	32;	.endef
	.seh_proc	rotr8
rotr8:
	.seh_endprologue
	movzx	eax, cl
	mov	r8d, eax
	mov	ecx, edx
	shr	r8d, cl
	mov	ecx, 8
	sub	ecx, edx
	sal	eax, cl
	or	eax, r8d
	ret
	.seh_endproc
	.globl	bswap_16
	.def	bswap_16;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_16
bswap_16:
	.seh_endprologue
	mov	eax, ecx
	rol	ax, 8
	ret
	.seh_endproc
	.globl	bswap_32
	.def	bswap_32;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_32
bswap_32:
	.seh_endprologue
	mov	edx, ecx
	shr	edx, 24
	mov	eax, ecx
	and	eax, 16711680
	shr	eax, 8
	or	eax, edx
	mov	edx, ecx
	and	edx, 65280
	sal	edx, 8
	or	eax, edx
	sal	ecx, 24
	or	eax, ecx
	ret
	.seh_endproc
	.globl	bswap_64
	.def	bswap_64;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_64
bswap_64:
	.seh_endprologue
	mov	rdx, rcx
	shr	rcx, 56
	mov	rax, rdx
	shr	rax, 40
	and	eax, 65280
	or	rax, rcx
	mov	rcx, rdx
	shr	rcx, 24
	and	ecx, 16711680
	or	rax, rcx
	mov	rcx, rdx
	shr	rcx, 8
	and	ecx, 4278190080
	or	rax, rcx
	mov	rcx, rdx
	and	ecx, 4278190080
	sal	rcx, 8
	or	rax, rcx
	mov	rcx, rdx
	and	ecx, 16711680
	sal	rcx, 24
	or	rax, rcx
	mov	rcx, rdx
	and	ecx, 65280
	sal	rcx, 40
	or	rax, rcx
	sal	rdx, 56
	or	rax, rdx
	ret
	.seh_endproc
	.globl	ffs
	.def	ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	ffs
ffs:
	.seh_endprologue
	mov	eax, 0
	.p2align 4
.L341:
	bt	ecx, eax
	jc	.L343
	add	eax, 1
	cmp	eax, 32
	jne	.L341
	mov	eax, 0
	jmp	.L338
.L343:
	add	eax, 1
.L338:
	ret
	.seh_endproc
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	.seh_endprologue
	mov	eax, ecx
	test	ecx, ecx
	je	.L344
	and	eax, 1
	jne	.L344
	mov	eax, 1
	.p2align 4
.L346:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L346
.L344:
	ret
	.seh_endproc
	.globl	gl_isinff
	.def	gl_isinff;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinff
gl_isinff:
	.seh_endprologue
	mov	eax, 1
	movss	xmm1, DWORD PTR .LC3[rip]
	comiss	xmm1, xmm0
	ja	.L349
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
	movzx	eax, al
.L349:
	ret
	.seh_endproc
	.globl	gl_isinfd
	.def	gl_isinfd;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfd
gl_isinfd:
	.seh_endprologue
	mov	eax, 1
	movsd	xmm1, QWORD PTR .LC5[rip]
	comisd	xmm1, xmm0
	ja	.L352
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
	movzx	eax, al
.L352:
	ret
	.seh_endproc
	.globl	gl_isinfl
	.def	gl_isinfl;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfl
gl_isinfl:
	.seh_endprologue
	fld	TBYTE PTR [rcx]
	mov	eax, 1
	fld	TBYTE PTR .LC7[rip]
	fcomip	st, st(1)
	ja	.L358
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	.L355
.L358:
	fstp	st(0)
.L355:
	ret
	.seh_endproc
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
	.globl	ldexpf
	.def	ldexpf;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpf
ldexpf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L361
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm0, xmm1
	jp	.L367
	jne	.L367
.L361:
	ret
.L367:
	movss	xmm1, DWORD PTR .LC9[rip]
	test	edx, edx
	jns	.L365
	movss	xmm1, DWORD PTR .LC10[rip]
	jmp	.L365
	.p2align 5
.L364:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L361
	mulss	xmm1, xmm1
.L365:
	test	dl, 1
	je	.L364
	mulss	xmm0, xmm1
	jmp	.L364
	.seh_endproc
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L369
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm0, xmm1
	jp	.L375
	jne	.L375
.L369:
	ret
.L375:
	movsd	xmm1, QWORD PTR .LC11[rip]
	test	edx, edx
	jns	.L373
	movsd	xmm1, QWORD PTR .LC12[rip]
	jmp	.L373
	.p2align 5
.L372:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L369
	mulsd	xmm1, xmm1
.L373:
	test	dl, 1
	je	.L372
	mulsd	xmm0, xmm1
	jmp	.L372
	.seh_endproc
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	.seh_endprologue
	mov	rax, rcx
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L377
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	.L383
	jne	.L383
	jmp	.L377
.L385:
	fstp	st(0)
.L377:
	fstp	TBYTE PTR [rax]
	ret
.L383:
	test	r8d, r8d
	js	.L384
	fld	DWORD PTR .LC9[rip]
	jmp	.L381
.L384:
	fld	DWORD PTR .LC10[rip]
	jmp	.L381
	.p2align 5
.L380:
	mov	edx, r8d
	shr	edx, 31
	add	edx, r8d
	sar	edx
	mov	r8d, edx
	je	.L385
	fmul	st, st(0)
.L381:
	test	r8b, 1
	je	.L380
	fmul	st(1), st
	jmp	.L380
	.seh_endproc
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L387
	add	r8, rdx
	mov	r9, rcx
	.p2align 5
.L388:
	add	rdx, 1
	add	r9, 1
	movzx	r10d, BYTE PTR -1[r9]
	xor	r10b, BYTE PTR -1[rdx]
	mov	BYTE PTR -1[r9], r10b
	cmp	rdx, r8
	jne	.L388
.L387:
	ret
	.seh_endproc
	.globl	strncat
	.def	strncat;	.scl	2;	.type	32;	.endef
	.seh_proc	strncat
strncat:
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rdi, rcx
	mov	rsi, rdx
	mov	rbx, r8
	call	strlen
	add	rax, rdi
	test	rbx, rbx
	je	.L392
	.p2align 5
.L391:
	movzx	edx, BYTE PTR [rsi]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	je	.L394
	add	rsi, 1
	add	rax, 1
	sub	rbx, 1
	jne	.L391
.L392:
	mov	BYTE PTR [rax], 0
.L394:
	mov	rax, rdi
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	ret
	.seh_endproc
	.globl	strnlen
	.def	strnlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strnlen
strnlen:
	.seh_endprologue
	mov	eax, 0
	test	rdx, rdx
	je	.L403
.L397:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L404
.L396:
	ret
.L403:
	mov	rax, rdx
	jmp	.L396
.L404:
	add	rax, 1
	cmp	rax, rdx
	jne	.L397
	mov	rax, rdx
	jmp	.L396
	.seh_endproc
	.globl	strpbrk
	.def	strpbrk;	.scl	2;	.type	32;	.endef
	.seh_proc	strpbrk
strpbrk:
	.seh_endprologue
	mov	rax, rcx
	cmp	BYTE PTR [rcx], 0
	je	.L412
.L406:
	mov	r8, rdx
	.p2align 5
.L409:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	je	.L413
	add	r8, 1
	cmp	BYTE PTR [rax], r9b
	jne	.L409
.L407:
	ret
.L412:
	mov	eax, 0
	jmp	.L407
.L413:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L406
	mov	eax, 0
	jmp	.L407
	.seh_endproc
	.globl	strrchr
	.def	strrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strrchr
strrchr:
	.seh_endprologue
	mov	r8d, 0
	.p2align 5
.L416:
	movzx	eax, BYTE PTR [rcx]
	movsx	r9d, al
	cmp	edx, r9d
	cmove	r8, rcx
	add	rcx, 1
	test	al, al
	jne	.L416
	mov	rax, r8
	ret
	.seh_endproc
	.globl	strstr
	.def	strstr;	.scl	2;	.type	32;	.endef
	.seh_proc	strstr
strstr:
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
	mov	rsi, rcx
	mov	rdi, rdx
	mov	rcx, rdx
	call	strlen
	mov	rbp, rax
	mov	rbx, rsi
	test	rax, rax
	je	.L419
	movsx	r12d, BYTE PTR [rdi]
.L421:
	mov	edx, r12d
	mov	rcx, rsi
	call	strchr
	mov	rbx, rax
	test	rax, rax
	je	.L419
	mov	r8, rbp
	mov	rdx, rdi
	mov	rcx, rbx
	call	strncmp
	test	eax, eax
	je	.L419
	lea	rsi, 1[rbx]
	jmp	.L421
.L419:
	mov	rax, rbx
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
	.seh_endproc
	.globl	copysign
	.def	copysign;	.scl	2;	.type	32;	.endef
	.seh_proc	copysign
copysign:
	.seh_endprologue
	pxor	xmm2, xmm2
	comisd	xmm2, xmm0
	ja	.L434
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L428
	comisd	xmm2, xmm1
	ja	.L427
.L428:
	ret
.L434:
	comisd	xmm1, xmm2
	jbe	.L428
.L427:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	jmp	.L428
	.seh_endproc
	.globl	memmem
	.def	memmem;	.scl	2;	.type	32;	.endef
	.seh_proc	memmem
memmem:
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
	mov	rbx, rcx
	mov	rsi, rdx
	sub	rsi, r9
	add	rsi, rcx
	mov	rax, rcx
	test	r9, r9
	je	.L435
	cmp	rdx, r9
	jb	.L440
	cmp	rsi, rcx
	jb	.L441
	movzx	ebp, BYTE PTR [r8]
	lea	rdi, -1[r9]
	lea	r12, 1[r8]
	jmp	.L438
	.p2align 4
.L437:
	add	rbx, 1
	cmp	rsi, rbx
	jb	.L444
.L438:
	cmp	BYTE PTR [rbx], bpl
	jne	.L437
	lea	rcx, 1[rbx]
	mov	r8, rdi
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.L437
	mov	rax, rbx
	jmp	.L435
.L444:
	mov	eax, 0
.L435:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
.L440:
	mov	eax, 0
	jmp	.L435
.L441:
	mov	eax, 0
	jmp	.L435
	.seh_endproc
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
	call	memcpy
	add	rax, rbx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.globl	frexp
	.def	frexp;	.scl	2;	.type	32;	.endef
	.seh_proc	frexp
frexp:
	.seh_endprologue
	pxor	xmm1, xmm1
	mov	ecx, 0
	comisd	xmm1, xmm0
	ja	.L464
.L447:
	mov	eax, 0
	comisd	xmm0, QWORD PTR .LC14[rip]
	jb	.L463
	movsd	xmm2, QWORD PTR .LC12[rip]
	movsd	xmm1, QWORD PTR .LC14[rip]
	.p2align 4
.L451:
	add	eax, 1
	mulsd	xmm0, xmm2
	comisd	xmm0, xmm1
	jnb	.L451
.L452:
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L454
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L454:
	ret
.L464:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	mov	ecx, 1
	jmp	.L447
.L463:
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	setp	r8b
	mov	eax, 1
	cmovne	r8d, eax
	movsd	xmm1, QWORD PTR .LC12[rip]
	comisd	xmm1, xmm0
	seta	r9b
	mov	eax, 0
	test	r9b, r8b
	je	.L452
	.p2align 4
.L453:
	sub	eax, 1
	addsd	xmm0, xmm0
	comisd	xmm1, xmm0
	ja	.L453
	jmp	.L452
	.seh_endproc
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	mov	r8, rcx
	test	rcx, rcx
	je	.L468
	mov	ecx, 0
	.p2align 5
.L467:
	mov	rax, r8
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rcx, rax
	add	rdx, rdx
	shr	r8
	jne	.L467
.L465:
	mov	rax, rcx
	ret
.L468:
	mov	ecx, 0
	jmp	.L465
	.seh_endproc
	.globl	udivmodsi4
	.def	udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	udivmodsi4
udivmodsi4:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jnb	.L473
	.p2align 5
.L471:
	test	edx, edx
	js	.L473
	add	edx, edx
	cmp	edx, ecx
	setb	r9b
	add	eax, eax
	setne	r10b
	test	r10b, r9b
	jne	.L471
	mov	r9d, eax
	test	eax, eax
	je	.L474
.L473:
	mov	r9d, 0
	jmp	.L477
	.p2align 4
.L476:
	shr	edx
	shr	eax
	je	.L474
.L477:
	cmp	ecx, edx
	jb	.L476
	sub	ecx, edx
	or	r9d, eax
	jmp	.L476
.L474:
	test	r8, r8
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.seh_endproc
	.globl	__clrsbqi2
	.def	__clrsbqi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbqi2
__clrsbqi2:
	.seh_endprologue
	mov	eax, ecx
	sar	al, 7
	mov	edx, 7
	xor	al, cl
	je	.L484
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	edx, -1[rax]
.L484:
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__clrsbdi2
	.def	__clrsbdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbdi2
__clrsbdi2:
	.seh_endprologue
	mov	rax, rcx
	sar	rax, 63
	mov	edx, 63
	xor	rax, rcx
	je	.L487
	bsr	rax, rax
	xor	rax, 63
	lea	edx, -1[rax]
.L487:
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__mulsi3
	.def	__mulsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3
__mulsi3:
	.seh_endprologue
	test	ecx, ecx
	je	.L493
	mov	r8d, 0
	.p2align 5
.L492:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	r8d, eax
	add	edx, edx
	shr	ecx
	jne	.L492
.L490:
	mov	eax, r8d
	ret
.L493:
	mov	r8d, ecx
	jmp	.L490
	.seh_endproc
	.globl	__cmovd
	.def	__cmovd;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovd
__cmovd:
	.seh_endprologue
	mov	r9, rdx
	mov	r10d, r8d
	shr	r10d, 3
	mov	eax, r8d
	and	eax, -8
	cmp	rcx, rdx
	jnb	.L496
.L499:
	lea	r11d, 0[0+r10*8]
	mov	edx, 0
	test	r10d, r10d
	je	.L498
	.p2align 5
.L502:
	mov	r10, QWORD PTR [r9+rdx]
	mov	QWORD PTR [rcx+rdx], r10
	add	rdx, 8
	cmp	rdx, r11
	jne	.L502
.L498:
	cmp	eax, r8d
	jnb	.L495
	mov	eax, eax
	.p2align 5
.L503:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	eax, r8d
	jb	.L503
.L495:
	ret
.L496:
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jb	.L499
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L495
	.p2align 5
.L504:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L504
	jmp	.L495
	.seh_endproc
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	.seh_endprologue
	mov	r9d, r8d
	shr	r9d
	cmp	rcx, rdx
	jnb	.L511
.L514:
	lea	r10d, [r9+r9]
	mov	eax, 0
	test	r9d, r9d
	je	.L513
	.p2align 5
.L517:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
	cmp	rax, r10
	jne	.L517
.L513:
	test	r8b, 1
	je	.L510
	lea	eax, -1[r8]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], dl
.L510:
	ret
.L511:
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jb	.L514
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L510
	.p2align 5
.L518:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	cmp	rax, -1
	jne	.L518
	jmp	.L510
	.seh_endproc
	.globl	__cmovw
	.def	__cmovw;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovw
__cmovw:
	.seh_endprologue
	mov	r9, rdx
	mov	r10d, r8d
	shr	r10d, 2
	mov	eax, r8d
	and	eax, -4
	cmp	rcx, rdx
	jnb	.L524
.L527:
	lea	r11d, 0[0+r10*4]
	mov	edx, 0
	test	r10d, r10d
	je	.L526
	.p2align 5
.L530:
	mov	r10d, DWORD PTR [r9+rdx]
	mov	DWORD PTR [rcx+rdx], r10d
	add	rdx, 4
	cmp	rdx, r11
	jne	.L530
.L526:
	cmp	eax, r8d
	jnb	.L523
	mov	eax, eax
	.p2align 5
.L531:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	eax, r8d
	jb	.L531
.L523:
	ret
.L524:
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jb	.L527
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L523
	.p2align 5
.L532:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L532
	jmp	.L523
	.seh_endproc
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
	.globl	__uitod
	.def	__uitod;	.scl	2;	.type	32;	.endef
	.seh_proc	__uitod
__uitod:
	.seh_endprologue
	mov	ecx, ecx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	ret
	.seh_endproc
	.globl	__uitof
	.def	__uitof;	.scl	2;	.type	32;	.endef
	.seh_proc	__uitof
__uitof:
	.seh_endprologue
	mov	ecx, ecx
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	ret
	.seh_endproc
	.globl	__ulltod
	.def	__ulltod;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltod
__ulltod:
	.seh_endprologue
	test	rcx, rcx
	js	.L546
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
.L545:
	ret
.L546:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	addsd	xmm0, xmm0
	jmp	.L545
	.seh_endproc
	.globl	__ulltof
	.def	__ulltof;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltof
__ulltof:
	.seh_endprologue
	test	rcx, rcx
	js	.L549
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
.L548:
	ret
.L549:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
	jmp	.L548
	.seh_endproc
	.globl	__umodi
	.def	__umodi;	.scl	2;	.type	32;	.endef
	.seh_proc	__umodi
__umodi:
	.seh_endprologue
	mov	eax, ecx
	mov	ecx, edx
	mov	edx, 0
	div	ecx
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__clzhi2
	.def	__clzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzhi2
__clzhi2:
	.seh_endprologue
	mov	eax, 0
	movzx	ecx, cx
	mov	r8d, 15
	.p2align 5
.L554:
	mov	edx, r8d
	sub	edx, eax
	bt	ecx, edx
	jc	.L552
	add	eax, 1
	cmp	eax, 16
	jne	.L554
.L552:
	ret
	.seh_endproc
	.globl	__ctzhi2
	.def	__ctzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzhi2
__ctzhi2:
	.seh_endprologue
	mov	eax, 0
	movzx	ecx, cx
	.p2align 4
.L558:
	bt	ecx, eax
	jc	.L556
	add	eax, 1
	cmp	eax, 16
	jne	.L558
.L556:
	ret
	.seh_endproc
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC15[rip]
	jnb	.L566
	cvttss2si	eax, xmm0
.L560:
	ret
.L566:
	subss	xmm0, DWORD PTR .LC15[rip]
	cvttss2si	eax, xmm0
	add	eax, 32768
	jmp	.L560
	.seh_endproc
	.globl	__parityhi2
	.def	__parityhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityhi2
__parityhi2:
	.seh_endprologue
	mov	r8d, ecx
	mov	eax, 0
	mov	ecx, 0
	movzx	r8d, r8w
	.p2align 5
.L568:
	mov	edx, r8d
	sar	edx, cl
	and	edx, 1
	add	eax, edx
	add	ecx, 1
	cmp	ecx, 16
	jne	.L568
	and	eax, 1
	ret
	.seh_endproc
	.globl	__popcounthi2
	.def	__popcounthi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcounthi2
__popcounthi2:
	.seh_endprologue
	mov	r8d, ecx
	mov	edx, 0
	mov	ecx, 0
	movzx	r8d, r8w
	.p2align 5
.L571:
	mov	eax, r8d
	sar	eax, cl
	and	eax, 1
	add	edx, eax
	add	ecx, 1
	cmp	ecx, 16
	jne	.L571
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__mulsi3_iq2000
	.def	__mulsi3_iq2000;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_iq2000
__mulsi3_iq2000:
	.seh_endprologue
	test	ecx, ecx
	je	.L576
	mov	r8d, 0
	.p2align 5
.L575:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	r8d, eax
	add	edx, edx
	shr	ecx
	jne	.L575
.L573:
	mov	eax, r8d
	ret
.L576:
	mov	r8d, ecx
	jmp	.L573
	.seh_endproc
	.globl	__mulsi3_lm32
	.def	__mulsi3_lm32;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_lm32
__mulsi3_lm32:
	.seh_endprologue
	mov	r8d, ecx
	test	ecx, ecx
	je	.L578
	test	edx, edx
	je	.L582
	mov	r8d, 0
	.p2align 5
.L580:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	r8d, eax
	add	ecx, ecx
	shr	edx
	jne	.L580
.L578:
	mov	eax, r8d
	ret
.L582:
	mov	r8d, edx
	jmp	.L578
	.seh_endproc
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jnb	.L587
	.p2align 5
.L585:
	test	edx, edx
	js	.L587
	add	edx, edx
	cmp	edx, ecx
	setb	r9b
	add	eax, eax
	setne	r10b
	test	r10b, r9b
	jne	.L585
	mov	r9d, eax
	test	eax, eax
	je	.L588
.L587:
	mov	r9d, 0
	jmp	.L591
	.p2align 4
.L590:
	shr	edx
	shr	eax
	je	.L588
.L591:
	cmp	ecx, edx
	jb	.L590
	sub	ecx, edx
	or	r9d, eax
	jmp	.L590
.L588:
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.seh_endproc
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	.seh_endprologue
	mov	eax, -1
	comiss	xmm1, xmm0
	ja	.L598
	comiss	xmm0, xmm1
	seta	al
	movzx	eax, al
.L598:
	ret
	.seh_endproc
	.globl	__mspabi_cmpd
	.def	__mspabi_cmpd;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpd
__mspabi_cmpd:
	.seh_endprologue
	mov	eax, -1
	comisd	xmm1, xmm0
	ja	.L601
	comisd	xmm0, xmm1
	seta	al
	movzx	eax, al
.L601:
	ret
	.seh_endproc
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
	.globl	__mulhi3
	.def	__mulhi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulhi3
__mulhi3:
	.seh_endprologue
	test	edx, edx
	js	.L614
	je	.L612
	mov	r11d, 0
.L608:
	mov	r8d, 0
	mov	r9d, 0
	.p2align 6
.L610:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	r8d, eax
	add	ecx, ecx
	lea	eax, 1[r9]
	mov	r9d, eax
	sar	edx
	setne	r10b
	cmp	al, 31
	setbe	al
	test	al, r10b
	jne	.L610
.L609:
	mov	eax, r8d
	neg	eax
	test	r11d, r11d
	cmovne	r8d, eax
	mov	eax, r8d
	ret
.L614:
	neg	edx
	mov	r11d, 1
	jmp	.L608
.L612:
	mov	r11d, 0
	mov	r8d, 0
	jmp	.L609
	.seh_endproc
	.globl	__divsi3
	.def	__divsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__divsi3
__divsi3:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	test	ecx, ecx
	js	.L623
	test	edx, edx
	js	.L624
	mov	r8d, 0
	call	__udivmodsi4
	jmp	.L615
.L623:
	neg	ecx
	test	edx, edx
	js	.L625
	mov	r8d, 0
	call	__udivmodsi4
.L619:
	neg	eax
.L615:
	add	rsp, 40
	ret
.L624:
	neg	edx
	mov	r8d, 0
	call	__udivmodsi4
	jmp	.L619
.L625:
	neg	edx
	mov	r8d, 0
	call	__udivmodsi4
	jmp	.L615
	.seh_endproc
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	test	ecx, ecx
	js	.L629
	mov	eax, edx
	neg	eax
	cmovns	edx, eax
	mov	r8d, 1
	call	__udivmodsi4
	jmp	.L626
.L629:
	neg	ecx
	mov	eax, edx
	neg	eax
	cmovns	edx, eax
	mov	r8d, 1
	call	__udivmodsi4
	neg	eax
.L626:
	add	rsp, 40
	ret
	.seh_endproc
	.globl	__udivmodhi4
	.def	__udivmodhi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodhi4
__udivmodhi4:
	.seh_endprologue
	mov	r10d, ecx
	mov	eax, edx
	mov	r9d, 1
	cmp	dx, cx
	jnb	.L633
	.p2align 5
.L631:
	test	ax, ax
	js	.L633
	add	eax, eax
	cmp	ax, r10w
	setb	dl
	add	r9w, r9w
	setne	cl
	test	cl, dl
	jne	.L631
	mov	edx, r9d
	test	r9w, r9w
	je	.L634
.L633:
	mov	edx, 0
	jmp	.L637
	.p2align 4
.L636:
	shr	ax
	shr	r9w
	je	.L634
.L637:
	cmp	r10w, ax
	jb	.L636
	sub	r10d, eax
	or	edx, r9d
	jmp	.L636
.L634:
	test	r8d, r8d
	cmovne	edx, r10d
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jnb	.L647
	.p2align 5
.L645:
	test	edx, edx
	js	.L647
	add	edx, edx
	cmp	edx, ecx
	setb	r9b
	add	eax, eax
	setne	r10b
	test	r10b, r9b
	jne	.L645
	mov	r9d, eax
	test	eax, eax
	je	.L648
.L647:
	mov	r9d, 0
	jmp	.L651
	.p2align 4
.L650:
	shr	edx
	shr	eax
	je	.L648
.L651:
	cmp	ecx, edx
	jb	.L650
	sub	ecx, edx
	or	r9d, eax
	jmp	.L650
.L648:
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.seh_endproc
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L659
	lea	ecx, -32[rdx]
	sal	r8d, cl
	mov	rax, r8
	sal	rax, 32
.L658:
	ret
.L659:
	mov	rax, rcx
	test	edx, edx
	je	.L658
	mov	r9, rcx
	sar	r9, 32
	mov	ecx, edx
	sal	r9d, cl
	mov	ecx, 32
	sub	ecx, edx
	shr	eax, cl
	or	eax, r9d
	sal	rax, 32
	mov	ecx, edx
	sal	r8d, cl
	or	rax, r8
	jmp	.L658
	.seh_endproc
	.globl	__ashlti3
	.def	__ashlti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashlti3
__ashlti3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	rax, rcx
	mov	rcx, QWORD PTR [rcx]
	mov	rax, QWORD PTR 8[rax]
	mov	r8, rcx
	mov	r9, rax
	test	dl, 64
	je	.L664
	mov	r10d, 0
	lea	ecx, -64[rdx]
	sal	r8, cl
	mov	r11, r8
.L665:
	mov	rcx, r10
	mov	rax, r11
.L666:
	mov	QWORD PTR [rsp], rcx
	mov	rdx, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rax
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
.L664:
	test	edx, edx
	je	.L666
	mov	r10, rcx
	mov	ecx, edx
	sal	r10, cl
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	r8, cl
	or	r8, r9
	mov	r11, r8
	jmp	.L665
	.seh_endproc
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L669
	sar	r8, 32
	mov	eax, r8d
	sar	eax, 31
	lea	ecx, -32[rdx]
	sar	r8d, cl
	sal	rax, 32
	or	rax, r8
.L668:
	ret
.L669:
	mov	rax, rcx
	test	edx, edx
	je	.L668
	mov	r9, rcx
	sar	r9, 32
	mov	eax, r9d
	mov	ecx, edx
	sar	eax, cl
	mov	ecx, 32
	sub	ecx, edx
	sal	r9d, cl
	mov	ecx, edx
	shr	r8d, cl
	or	r9d, r8d
	sal	rax, 32
	or	rax, r9
	jmp	.L668
	.seh_endproc
	.globl	__ashrti3
	.def	__ashrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrti3
__ashrti3:
	push	r12
	.seh_pushreg	r12
	sub	rsp, 16
	.seh_stackalloc	16
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	mov	r10, r8
	mov	rax, rcx
	test	dl, 64
	je	.L674
	sar	rcx, 63
	mov	r12, rcx
	lea	ecx, -64[rdx]
	sar	rax, cl
	mov	r11, rax
.L675:
	mov	r8, r11
	mov	rcx, r12
.L676:
	mov	QWORD PTR [rsp], r8
	mov	rax, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 16
	pop	r12
	ret
.L674:
	test	edx, edx
	je	.L676
	mov	r9, rcx
	mov	ecx, edx
	sar	r9, cl
	mov	r12, r9
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r10, cl
	or	rax, r10
	mov	r11, rax
	jmp	.L675
	.seh_endproc
	.globl	__bswapdi2
	.def	__bswapdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapdi2
__bswapdi2:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rdx, rcx
	mov	rsi, rcx
	shr	rsi, 56
	mov	rbx, rcx
	shr	rbx, 40
	and	ebx, 65280
	mov	r11, rcx
	shr	r11, 24
	and	r11d, 16711680
	mov	r10, rcx
	shr	r10, 8
	and	r10d, 4278190080
	mov	r9, rcx
	sal	r9, 8
	movabs	rax, 1095216660480
	and	r9, rax
	mov	r8, rcx
	sal	r8, 24
	movabs	rax, 280375465082880
	and	r8, rax
	sal	rcx, 40
	movabs	rax, 71776119061217280
	and	rcx, rax
	mov	rax, rdx
	sal	rax, 56
	or	rax, rsi
	or	rax, rbx
	or	rax, r11
	or	rax, r10
	or	rax, r9
	or	rax, r8
	or	rax, rcx
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.globl	__bswapsi2
	.def	__bswapsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapsi2
__bswapsi2:
	.seh_endprologue
	mov	r9d, ecx
	shr	r9d, 24
	mov	r8d, ecx
	shr	r8d, 8
	and	r8d, 65280
	mov	edx, ecx
	sal	edx, 8
	and	edx, 16711680
	mov	eax, ecx
	sal	eax, 24
	or	eax, r9d
	or	eax, r8d
	or	eax, edx
	ret
	.seh_endproc
	.globl	__clzsi2
	.def	__clzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzsi2
__clzsi2:
	.seh_endprologue
	mov	edx, ecx
	cmp	ecx, 65535
	setbe	r8b
	movzx	r8d, r8b
	sal	r8d, 4
	mov	ecx, 16
	sub	ecx, r8d
	shr	edx, cl
	test	dh, -1
	sete	al
	movzx	eax, al
	sal	eax, 3
	mov	ecx, 8
	sub	ecx, eax
	shr	edx, cl
	add	eax, r8d
	test	dl, -16
	sete	r8b
	movzx	r8d, r8b
	sal	r8d, 2
	mov	ecx, 4
	sub	ecx, r8d
	shr	edx, cl
	add	eax, r8d
	test	dl, 12
	sete	r9b
	movzx	r9d, r9b
	add	r9d, r9d
	mov	r8d, 2
	mov	ecx, r8d
	sub	ecx, r9d
	shr	edx, cl
	add	eax, r9d
	mov	ecx, edx
	shr	ecx
	not	ecx
	sub	r8d, edx
	mov	edx, ecx
	and	edx, 1
	neg	edx
	and	edx, r8d
	add	eax, edx
	ret
	.seh_endproc
	.globl	__clzti2
	.def	__clzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzti2
__clzti2:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	r8, QWORD PTR 8[rcx]
	mov	r9, rax
	cmp	r8, 1
	sbb	eax, eax
	movsx	rcx, eax
	mov	rdx, rcx
	not	rdx
	and	rdx, r8
	and	rcx, r9
	or	rdx, rcx
	bsr	rdx, rdx
	xor	rdx, 63
	and	eax, 64
	add	eax, edx
	ret
	.seh_endproc
	.globl	__cmpdi2
	.def	__cmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpdi2
__cmpdi2:
	.seh_endprologue
	mov	r9, rcx
	sar	r9, 32
	mov	r8, rdx
	sar	r8, 32
	mov	eax, 0
	cmp	r9d, r8d
	jl	.L682
	mov	eax, 2
	jg	.L682
	mov	eax, 0
	cmp	ecx, edx
	jb	.L682
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L682:
	ret
	.seh_endproc
	.globl	__aeabi_lcmp
	.def	__aeabi_lcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_lcmp
__aeabi_lcmp:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	call	__cmpdi2
	sub	eax, 1
	add	rsp, 40
	ret
	.seh_endproc
	.globl	__cmpti2
	.def	__cmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpti2
__cmpti2:
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	mov	r9, QWORD PTR [rdx]
	mov	rax, QWORD PTR 8[rdx]
	mov	rdx, rcx
	mov	ecx, 0
	cmp	rdx, rax
	jl	.L690
	mov	ecx, 2
	jg	.L690
	mov	ecx, 0
	cmp	r8, r9
	jb	.L690
	cmp	r9, r8
	setb	cl
	movzx	ecx, cl
	add	ecx, 1
.L690:
	mov	eax, ecx
	ret
	.seh_endproc
	.globl	__ctzsi2
	.def	__ctzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzsi2
__ctzsi2:
	.seh_endprologue
	mov	edx, ecx
	test	cx, cx
	sete	al
	movzx	eax, al
	sal	eax, 4
	mov	ecx, eax
	shr	edx, cl
	test	dl, dl
	sete	cl
	movzx	ecx, cl
	sal	ecx, 3
	shr	edx, cl
	add	eax, ecx
	test	dl, 15
	sete	cl
	movzx	ecx, cl
	sal	ecx, 2
	shr	edx, cl
	add	eax, ecx
	test	dl, 3
	sete	cl
	movzx	ecx, cl
	add	ecx, ecx
	shr	edx, cl
	and	edx, 3
	add	eax, ecx
	mov	r8d, edx
	not	r8d
	shr	edx
	mov	ecx, 2
	sub	ecx, edx
	mov	edx, r8d
	and	edx, 1
	neg	edx
	and	edx, ecx
	add	eax, edx
	ret
	.seh_endproc
	.globl	__ctzti2
	.def	__ctzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzti2
__ctzti2:
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	cmp	r8, 1
	sbb	eax, eax
	movsx	rdx, eax
	and	rcx, rdx
	not	rdx
	and	rdx, r8
	or	rdx, rcx
	rep bsf	rdx, rdx
	and	eax, 64
	add	eax, edx
	ret
	.seh_endproc
	.globl	__ffsti2
	.def	__ffsti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ffsti2
__ffsti2:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	test	rax, rax
	jne	.L698
	xor	eax, eax
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	mov	edx, 0
	cmove	eax, edx
.L699:
	ret
.L698:
	rep bsf	rax, rax
	add	eax, 1
	jmp	.L699
	.seh_endproc
	.globl	__lshrdi3
	.def	__lshrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrdi3
__lshrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L702
	shr	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	shr	eax, cl
.L701:
	ret
.L702:
	mov	rax, rcx
	test	edx, edx
	je	.L701
	mov	r9, rcx
	shr	r9, 32
	mov	eax, r9d
	mov	ecx, edx
	shr	eax, cl
	mov	ecx, 32
	sub	ecx, edx
	sal	r9d, cl
	mov	ecx, edx
	shr	r8d, cl
	or	r9d, r8d
	sal	rax, 32
	or	rax, r9
	jmp	.L701
	.seh_endproc
	.globl	__lshrti3
	.def	__lshrti3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrti3
__lshrti3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	rax, rcx
	mov	rcx, QWORD PTR [rcx]
	mov	rax, QWORD PTR 8[rax]
	mov	r9, rcx
	mov	r8, rax
	test	dl, 64
	je	.L707
	lea	ecx, -64[rdx]
	shr	r8, cl
	mov	r10, r8
	mov	r11d, 0
.L708:
	mov	rcx, r10
	mov	rax, r11
.L709:
	mov	QWORD PTR [rsp], rcx
	mov	rdx, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rax
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
.L707:
	test	edx, edx
	je	.L709
	mov	ecx, edx
	shr	rax, cl
	mov	r11, rax
	mov	ecx, 64
	sub	ecx, edx
	sal	r8, cl
	mov	ecx, edx
	shr	r9, cl
	or	r8, r9
	mov	r10, r8
	jmp	.L708
	.seh_endproc
	.globl	__muldsi3
	.def	__muldsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldsi3
__muldsi3:
	.seh_endprologue
	movzx	r9d, cx
	movzx	r10d, dx
	mov	r8d, r9d
	imul	r8d, r10d
	mov	eax, r8d
	shr	eax, 16
	shr	ecx, 16
	imul	r10d, ecx
	add	eax, r10d
	mov	r10d, eax
	shr	r10d, 16
	movzx	eax, ax
	movzx	r8d, r8w
	shr	edx, 16
	imul	r9d, edx
	add	eax, r9d
	mov	r9d, eax
	sal	r9d, 16
	shr	eax, 16
	add	eax, r10d
	imul	ecx, edx
	lea	edx, [rax+rcx]
	sal	rdx, 32
	lea	eax, [r9+r8]
	or	rax, rdx
	ret
	.seh_endproc
	.globl	__muldi3_compiler_rt
	.def	__muldi3_compiler_rt;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3_compiler_rt
__muldi3_compiler_rt:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	mov	rsi, rcx
	mov	rbx, rdx
	call	__muldsi3
	mov	rcx, rax
	sar	rcx, 32
	mov	rdx, rsi
	sar	rdx, 32
	imul	edx, ebx
	sar	rbx, 32
	imul	ebx, esi
	add	edx, ebx
	lea	edx, [rdx+rcx]
	sal	rdx, 32
	mov	eax, eax
	or	rax, rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.globl	__mulddi3
	.def	__mulddi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulddi3
__mulddi3:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	r9d, ecx
	mov	r10d, edx
	mov	r8, r9
	imul	r8, r10
	mov	rax, r8
	shr	rax, 32
	shr	rcx, 32
	imul	r10, rcx
	add	rax, r10
	mov	r10, rax
	shr	r10, 32
	mov	eax, eax
	mov	r8d, r8d
	shr	rdx, 32
	imul	r9, rdx
	add	rax, r9
	mov	r9, rax
	sal	r9, 32
	add	r8, r9
	shr	rax, 32
	add	rax, r10
	mov	QWORD PTR [rsp], r8
	imul	rcx, rdx
	add	rax, rcx
	mov	rdx, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rax
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
	.globl	__multi3
	.def	__multi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__multi3
__multi3:
	push	rbp
	.seh_pushreg	rbp
	push	rdi
	.seh_pushreg	rdi
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 56
	.seh_stackalloc	56
	.seh_endprologue
	mov	rdi, QWORD PTR [rcx]
	mov	rbx, QWORD PTR 8[rcx]
	mov	rbp, QWORD PTR [rdx]
	mov	rsi, QWORD PTR 8[rdx]
	mov	rdx, rbp
	mov	rcx, rdi
	call	__mulddi3
	movaps	XMMWORD PTR 32[rsp], xmm0
	mov	rax, QWORD PTR 32[rsp]
	mov	rdx, QWORD PTR 40[rsp]
	imul	rbx, rbp
	imul	rsi, rdi
	add	rbx, rsi
	add	rbx, rdx
	mov	QWORD PTR 32[rsp], rax
	mov	QWORD PTR 40[rsp], rbx
	movdqa	xmm0, XMMWORD PTR 32[rsp]
	add	rsp, 56
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
	.seh_endproc
	.globl	__negdi2
	.def	__negdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__negdi2
__negdi2:
	.seh_endprologue
	mov	rax, rcx
	neg	rax
	ret
	.seh_endproc
	.globl	__negti2
	.def	__negti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__negti2
__negti2:
	sub	rsp, 24
	.seh_stackalloc	24
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	neg	rax
	adc	rdx, 0
	neg	rdx
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rdx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
	.seh_endproc
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
	and	ecx, 15
	mov	eax, 27030
	sar	eax, cl
	and	eax, 1
	ret
	.seh_endproc
	.globl	__parityti2
	.def	__parityti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__parityti2
__parityti2:
	.seh_endprologue
	mov	rdx, QWORD PTR [rcx]
	mov	rax, QWORD PTR 8[rcx]
	xor	rax, rdx
	mov	rdx, rax
	sar	rdx, 32
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
	and	ecx, 15
	mov	eax, 27030
	sar	eax, cl
	and	eax, 1
	ret
	.seh_endproc
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
	and	ecx, 15
	mov	eax, 27030
	sar	eax, cl
	and	eax, 1
	ret
	.seh_endproc
	.globl	__popcountdi2
	.def	__popcountdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountdi2
__popcountdi2:
	.seh_endprologue
	mov	rax, rcx
	shr	rax
	movabs	rdx, 6148914691236517205
	and	rax, rdx
	sub	rcx, rax
	mov	rdx, rcx
	shr	rdx, 2
	movabs	rax, 3689348814741910323
	and	rdx, rax
	and	rcx, rax
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
	shr	edx, 2
	and	edx, 858993459
	and	ecx, 858993459
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
	.globl	__popcountti2
	.def	__popcountti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcountti2
__popcountti2:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	r8, rax
	mov	r9, rdx
	shrd	r8, r9, 1
	shr	r9
	movabs	r10, 6148914691236517205
	and	r8, r10
	and	r9, r10
	sub	rax, r8
	sbb	rdx, r9
	mov	r8, rax
	mov	r9, rdx
	shrd	r8, r9, 2
	shr	r9, 2
	movabs	r10, 3689348814741910323
	and	r8, r10
	and	r9, r10
	and	rax, r10
	and	rdx, r10
	add	r8, rax
	adc	r9, rdx
	mov	rax, r8
	mov	rdx, r9
	shrd	rax, rdx, 4
	shr	rdx, 4
	add	rax, r8
	adc	rdx, r9
	movabs	r8, 1085102592571150095
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
	.globl	__powidf2
	.def	__powidf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powidf2
__powidf2:
	.seh_endprologue
	mov	ecx, edx
	shr	ecx, 31
	movsd	xmm1, QWORD PTR .LC14[rip]
	jmp	.L726
	.p2align 5
.L724:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L725
	mulsd	xmm0, xmm0
.L726:
	test	dl, 1
	je	.L724
	mulsd	xmm1, xmm0
	jmp	.L724
.L725:
	test	ecx, ecx
	je	.L723
	movsd	xmm0, QWORD PTR .LC14[rip]
	divsd	xmm0, xmm1
	movapd	xmm1, xmm0
.L723:
	movapd	xmm0, xmm1
	ret
	.seh_endproc
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	.seh_endprologue
	mov	ecx, edx
	shr	ecx, 31
	movss	xmm1, DWORD PTR .LC16[rip]
	jmp	.L731
	.p2align 5
.L729:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L730
	mulss	xmm0, xmm0
.L731:
	test	dl, 1
	je	.L729
	mulss	xmm1, xmm0
	jmp	.L729
.L730:
	test	ecx, ecx
	je	.L728
	movss	xmm0, DWORD PTR .LC16[rip]
	divss	xmm0, xmm1
	movaps	xmm1, xmm0
.L728:
	movaps	xmm0, xmm1
	ret
	.seh_endproc
	.globl	__ucmpdi2
	.def	__ucmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpdi2
__ucmpdi2:
	.seh_endprologue
	mov	r8, rcx
	shr	r8, 32
	mov	r9, rdx
	shr	r9, 32
	mov	eax, 0
	cmp	r8d, r9d
	jb	.L733
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L733
	mov	eax, 0
	cmp	ecx, edx
	jb	.L733
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L733:
	ret
	.seh_endproc
	.globl	__aeabi_ulcmp
	.def	__aeabi_ulcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_ulcmp
__aeabi_ulcmp:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	call	__ucmpdi2
	sub	eax, 1
	add	rsp, 40
	ret
	.seh_endproc
	.globl	__ucmpti2
	.def	__ucmpti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpti2
__ucmpti2:
	.seh_endprologue
	mov	rax, rcx
	mov	rcx, QWORD PTR [rcx]
	mov	rax, QWORD PTR 8[rax]
	mov	r9, QWORD PTR [rdx]
	mov	rdx, QWORD PTR 8[rdx]
	mov	r8, rcx
	mov	ecx, 0
	cmp	rax, rdx
	jb	.L741
	mov	ecx, 2
	cmp	rdx, rax
	jb	.L741
	mov	ecx, 0
	cmp	r8, r9
	jb	.L741
	cmp	r9, r8
	setb	cl
	movzx	ecx, cl
	add	ecx, 1
.L741:
	mov	eax, ecx
	ret
	.seh_endproc
.lcomm s.0,7,1
	.section .rdata,"dr"
	.align 4
.LC3:
	.long	-8388609
	.align 4
.LC4:
	.long	2139095039
	.align 8
.LC5:
	.long	-1
	.long	-1048577
	.align 8
.LC6:
	.long	-1
	.long	2146435071
	.align 16
.LC7:
	.long	-1
	.long	-1
	.long	65534
	.long	0
	.align 16
.LC8:
	.long	-1
	.long	-1
	.long	32766
	.long	0
	.set	.LC9,.LC11+4
	.align 4
.LC10:
	.long	1056964608
	.align 8
.LC11:
	.long	0
	.long	1073741824
	.align 8
.LC12:
	.long	0
	.long	1071644672
	.align 16
.LC13:
	.long	0
	.long	-2147483648
	.long	0
	.long	0
	.align 8
.LC14:
	.long	0
	.long	1072693248
	.align 4
.LC15:
	.long	1191182336
	.align 4
.LC16:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	memcpy;	.scl	2;	.type	32;	.endef
