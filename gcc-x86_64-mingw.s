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
	cmp	r10d, r8d
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
	cmp	eax, edx
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
	cmp	r8d, edx
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
	cmp	r8, r9
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
	movzx	r8d, BYTE PTR [rcx]
	test	r8b, r8b
	je	.L52
	.p2align 5
.L53:
	movzx	r8d, r8b
	cmp	r8d, edx
	je	.L52
	add	rax, 1
	movzx	r8d, BYTE PTR [rax]
	test	r8b, r8b
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
	cmp	r8d, edx
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
	movzx	eax, BYTE PTR [rcx]
	movzx	r9d, BYTE PTR [rdx]
	test	al, al
	setne	r10b
	cmp	al, r9b
	sete	r8b
	test	r10b, r8b
	je	.L63
	mov	r8d, 1
	.p2align 5
.L64:
	movzx	eax, BYTE PTR [rcx+r8]
	movzx	r9d, BYTE PTR [rdx+r8]
	test	al, al
	setne	r11b
	cmp	al, r9b
	sete	r10b
	add	r8, 1
	test	r11b, r10b
	jne	.L64
.L63:
	movzx	eax, al
	movzx	r9d, r9b
	sub	eax, r9d
	ret
	.seh_endproc
	.globl	strlen
	.def	strlen;	.scl	2;	.type	32;	.endef
	.seh_proc	strlen
strlen:
	.seh_endprologue
	cmp	BYTE PTR [rcx], 0
	je	.L69
	mov	rax, rcx
	.p2align 4
.L68:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L68
.L67:
	sub	rax, rcx
	ret
.L69:
	mov	rax, rcx
	jmp	.L67
	.seh_endproc
	.globl	strncmp
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strncmp
strncmp:
	.seh_endprologue
	mov	r9, rcx
	mov	eax, 0
	test	r8, r8
	je	.L71
	movzx	eax, BYTE PTR [rcx]
	test	al, al
	je	.L77
	mov	rcx, rdx
	lea	r11, -1[rdx+r8]
	.p2align 6
.L74:
	movzx	r8d, BYTE PTR [rcx]
	cmp	r11, rcx
	setne	r10b
	test	r8b, r8b
	setne	dl
	cmp	r8b, al
	sete	r8b
	and	edx, r8d
	test	dl, r10b
	je	.L73
	add	r9, 1
	add	rcx, 1
	movzx	eax, BYTE PTR [r9]
	test	al, al
	jne	.L74
.L73:
	movzx	eax, al
	movzx	edx, BYTE PTR [rcx]
	sub	eax, edx
.L71:
	ret
.L77:
	mov	rcx, rdx
	jmp	.L73
	.seh_endproc
	.globl	swab
	.def	swab;	.scl	2;	.type	32;	.endef
	.seh_proc	swab
swab:
	.seh_endprologue
	cmp	r8, 1
	jle	.L78
	and	r8, -2
	add	r8, rcx
	.p2align 5
.L80:
	movzx	eax, BYTE PTR 1[rcx]
	mov	BYTE PTR [rdx], al
	movzx	eax, BYTE PTR [rcx]
	mov	BYTE PTR 1[rdx], al
	add	rdx, 2
	add	rcx, 2
	cmp	rcx, r8
	jne	.L80
.L78:
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
	sete	al
	cmp	ecx, 9
	sete	dl
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
	sete	al
	sub	ecx, 9
	cmp	ecx, 4
	setbe	dl
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
	jne	.L92
	lea	eax, -8232[rcx]
	cmp	eax, 1
	jbe	.L92
	sub	ecx, 65529
	cmp	ecx, 2
	setbe	dl
	movzx	edx, dl
.L92:
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
	jbe	.L103
	cmp	cx, 8231
	setbe	r8b
	movzx	edx, cx
	lea	eax, -8234[rdx]
	cmp	eax, 47061
	setbe	r9b
	mov	eax, 1
	or	r8b, r9b
	jne	.L97
	lea	r8d, -57344[rdx]
	cmp	r8d, 8184
	jbe	.L97
	sub	edx, 65532
	mov	eax, 0
	cmp	edx, 1048579
	ja	.L97
	not	ecx
	test	cx, -2
	setne	al
	movzx	eax, al
	jmp	.L97
.L103:
	lea	eax, 1[rcx]
	and	eax, 127
	cmp	eax, 32
	setg	al
	movzx	eax, al
.L97:
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
	jbe	.L104
	or	ecx, 32
	movzx	ecx, cx
	sub	ecx, 97
	cmp	ecx, 5
	setbe	dl
	movzx	edx, dl
.L104:
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
	jp	.L108
	ucomisd	xmm1, xmm1
	jp	.L112
	comisd	xmm0, xmm1
	jbe	.L115
	subsd	xmm0, xmm1
.L108:
	ret
.L112:
	movapd	xmm0, xmm1
	jmp	.L108
.L115:
	pxor	xmm0, xmm0
	jmp	.L108
	.seh_endproc
	.globl	fdimf
	.def	fdimf;	.scl	2;	.type	32;	.endef
	.seh_proc	fdimf
fdimf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L116
	ucomiss	xmm1, xmm1
	jp	.L120
	comiss	xmm0, xmm1
	jbe	.L123
	subss	xmm0, xmm1
.L116:
	ret
.L120:
	movaps	xmm0, xmm1
	jmp	.L116
.L123:
	pxor	xmm0, xmm0
	jmp	.L116
	.seh_endproc
	.globl	fmax
	.def	fmax;	.scl	2;	.type	32;	.endef
	.seh_proc	fmax
fmax:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L129
	ucomisd	xmm1, xmm1
	jp	.L124
	movmskpd	eax, xmm0
	and	eax, 1
	movmskpd	edx, xmm1
	and	edx, 1
	cmp	eax, edx
	je	.L126
	test	eax, eax
	je	.L124
	movapd	xmm0, xmm1
	jmp	.L124
.L126:
	movapd	xmm2, xmm1
	maxsd	xmm2, xmm0
	movapd	xmm0, xmm2
.L124:
	ret
.L129:
	movapd	xmm0, xmm1
	jmp	.L124
	.seh_endproc
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L137
	ucomiss	xmm1, xmm1
	jp	.L132
	movd	eax, xmm0
	and	eax, -2147483648
	movd	edx, xmm1
	and	edx, -2147483648
	cmp	eax, edx
	je	.L134
	test	eax, eax
	je	.L132
	movaps	xmm0, xmm1
	jmp	.L132
.L134:
	movaps	xmm2, xmm1
	maxss	xmm2, xmm0
	movaps	xmm0, xmm2
.L132:
	ret
.L137:
	movaps	xmm0, xmm1
	jmp	.L132
	.seh_endproc
	.globl	fmaxl
	.def	fmaxl;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxl
fmaxl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L144
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L145
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
	je	.L142
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	jmp	.L141
.L145:
	fstp	st(0)
.L141:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
.L142:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	jmp	.L141
.L144:
	fstp	st(0)
	jmp	.L141
	.seh_endproc
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L146
	ucomisd	xmm1, xmm1
	jp	.L152
	movmskpd	eax, xmm0
	and	eax, 1
	movmskpd	edx, xmm1
	and	edx, 1
	cmp	eax, edx
	je	.L148
	test	eax, eax
	je	.L146
	movapd	xmm1, xmm0
	jmp	.L146
.L148:
	movapd	xmm2, xmm0
	minsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L146:
	movapd	xmm0, xmm1
	ret
.L152:
	movapd	xmm1, xmm0
	jmp	.L146
	.seh_endproc
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L154
	ucomiss	xmm1, xmm1
	jp	.L160
	movd	eax, xmm0
	and	eax, -2147483648
	movd	edx, xmm1
	and	edx, -2147483648
	cmp	eax, edx
	je	.L156
	test	eax, eax
	je	.L154
	movaps	xmm1, xmm0
	jmp	.L154
.L156:
	movaps	xmm2, xmm0
	minss	xmm2, xmm1
	movaps	xmm1, xmm2
.L154:
	movaps	xmm0, xmm1
	ret
.L160:
	movaps	xmm1, xmm0
	jmp	.L154
	.seh_endproc
	.globl	fminl
	.def	fminl;	.scl	2;	.type	32;	.endef
	.seh_proc	fminl
fminl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L167
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L166
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
	je	.L164
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	jmp	.L163
.L167:
	fstp	st(0)
.L163:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
.L164:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	jmp	.L163
.L166:
	fstp	st(0)
	jmp	.L163
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
	je	.L169
	lea	r8, digits[rip]
	.p2align 5
.L170:
	mov	ecx, eax
	and	ecx, 63
	movzx	ecx, BYTE PTR [r8+rcx]
	mov	BYTE PTR [rdx], cl
	add	rdx, 1
	shr	eax, 6
	jne	.L170
.L169:
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
	je	.L178
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	QWORD PTR [rdx], rcx
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L175
	mov	QWORD PTR 8[rax], rcx
.L175:
	ret
.L178:
	mov	QWORD PTR 8[rcx], 0
	mov	QWORD PTR [rcx], 0
	jmp	.L175
	.seh_endproc
	.globl	remque
	.def	remque;	.scl	2;	.type	32;	.endef
	.seh_proc	remque
remque:
	.seh_endprologue
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L180
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L180:
	mov	rax, QWORD PTR 8[rcx]
	test	rax, rax
	je	.L179
	mov	rdx, QWORD PTR [rcx]
	mov	QWORD PTR [rax], rdx
.L179:
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
	je	.L183
	mov	rbx, rdx
	mov	esi, 0
.L185:
	mov	r13, rbx
	mov	rdx, rbx
	mov	rcx, r12
	call	r14
	test	eax, eax
	je	.L182
	add	rsi, 1
	add	rbx, rbp
	cmp	rdi, rsi
	jne	.L185
.L183:
	lea	rax, 1[rdi]
	mov	QWORD PTR [r15], rax
	imul	rdi, rbp
	add	rdi, QWORD PTR 120[rsp]
	mov	rcx, rdi
	mov	r8, rbp
	mov	rdx, r12
	call	memcpy
	mov	r13, rdi
.L182:
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
	je	.L190
	mov	rbx, rdx
	mov	esi, 0
.L189:
	mov	r14, rbx
	mov	rdx, rbx
	mov	rcx, rdi
	call	r13
	test	eax, eax
	je	.L187
	add	rsi, 1
	add	rbx, rbp
	cmp	r12, rsi
	jne	.L189
	mov	r14d, 0
.L187:
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
.L190:
	mov	r14d, 0
	jmp	.L187
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
	jmp	.L194
.L195:
	add	rbx, 1
.L194:
	movzx	esi, BYTE PTR [rbx]
	movsx	ecx, sil
	call	isspace
	test	eax, eax
	jne	.L195
	cmp	sil, 43
	je	.L201
	mov	r8d, eax
	cmp	sil, 45
	jne	.L197
	mov	r8d, 1
.L196:
	add	rbx, 1
.L197:
	movzx	edx, BYTE PTR [rbx]
	movsx	ecx, dl
	sub	ecx, 48
	cmp	ecx, 9
	ja	.L199
	.p2align 5
.L198:
	lea	eax, [rax+rax*4]
	add	eax, eax
	add	rbx, 1
	sub	edx, 48
	movsx	edx, dl
	sub	eax, edx
	movzx	edx, BYTE PTR [rbx]
	movsx	ecx, dl
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L198
.L199:
	mov	edx, eax
	neg	edx
	test	r8d, r8d
	cmove	eax, edx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
.L201:
	mov	r8d, eax
	jmp	.L196
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
	jmp	.L206
.L207:
	add	rbx, 1
.L206:
	movzx	esi, BYTE PTR [rbx]
	movsx	ecx, sil
	call	isspace
	test	eax, eax
	jne	.L207
	cmp	sil, 43
	je	.L213
	mov	r8d, eax
	cmp	sil, 45
	jne	.L209
	mov	r8d, 1
.L208:
	add	rbx, 1
.L209:
	movzx	edx, BYTE PTR [rbx]
	movsx	ecx, dl
	sub	ecx, 48
	cmp	ecx, 9
	ja	.L211
	.p2align 5
.L210:
	lea	eax, [rax+rax*4]
	add	eax, eax
	add	rbx, 1
	sub	edx, 48
	movsx	edx, dl
	sub	eax, edx
	movzx	edx, BYTE PTR [rbx]
	movsx	ecx, dl
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L210
.L211:
	mov	edx, eax
	neg	edx
	test	r8d, r8d
	cmove	eax, edx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
.L213:
	mov	r8d, eax
	jmp	.L208
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
	jmp	.L218
.L219:
	add	rbx, 1
.L218:
	movzx	esi, BYTE PTR [rbx]
	movsx	ecx, sil
	call	isspace
	test	eax, eax
	jne	.L219
	cmp	sil, 43
	je	.L220
	cmp	sil, 45
	jne	.L221
	mov	eax, 1
.L220:
	add	rbx, 1
.L221:
	movzx	ecx, BYTE PTR [rbx]
	movsx	r8d, cl
	sub	r8d, 48
	mov	edx, 0
	cmp	r8d, 9
	ja	.L223
	.p2align 6
.L222:
	lea	rdx, [rdx+rdx*4]
	add	rdx, rdx
	add	rbx, 1
	sub	ecx, 48
	movsx	rcx, cl
	sub	rdx, rcx
	movzx	ecx, BYTE PTR [rbx]
	movsx	r8d, cl
	sub	r8d, 48
	cmp	r8d, 9
	jbe	.L222
.L223:
	mov	rcx, rdx
	neg	rcx
	test	eax, eax
	cmove	rdx, rcx
	mov	rax, rdx
	add	rsp, 40
	pop	rbx
	pop	rsi
	ret
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
	jne	.L231
	mov	esi, 0
	jmp	.L228
.L233:
	mov	rbx, rdi
.L230:
	test	rbx, rbx
	je	.L235
.L231:
	mov	rdi, rbx
	shr	rdi
	mov	rsi, rdi
	imul	rsi, rbp
	add	rsi, r12
	mov	rdx, rsi
	mov	rcx, r13
	call	r14
	test	eax, eax
	js	.L233
	jle	.L228
	lea	r12, [rsi+rbp]
	sub	rbx, 1
	sub	rbx, rdi
	jmp	.L230
.L235:
	mov	esi, 0
.L228:
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
	jne	.L239
	mov	ebx, 0
	jmp	.L236
.L238:
	sar	esi
	je	.L242
.L239:
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
	je	.L236
	jle	.L238
	lea	rbp, [rbx+rdi]
	sub	esi, 1
	jmp	.L238
.L242:
	mov	ebx, 0
.L236:
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
	mov	rax, rcx
	mov	r9d, edx
	movzx	ecx, WORD PTR [rcx]
	cmp	dx, cx
	setne	r8b
	test	cx, cx
	setne	dl
	test	r8b, dl
	je	.L251
	.p2align 5
.L252:
	add	rax, 2
	movzx	ecx, WORD PTR [rax]
	cmp	cx, r9w
	setne	r8b
	test	cx, cx
	setne	dl
	test	r8b, dl
	jne	.L252
.L251:
	test	cx, cx
	mov	edx, 0
	cmove	rax, rdx
	ret
	.seh_endproc
	.globl	wcscmp
	.def	wcscmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscmp
wcscmp:
	.seh_endprologue
	movzx	r9d, WORD PTR [rcx]
	movzx	r10d, WORD PTR [rdx]
	test	r9w, r9w
	setne	al
	cmp	r9w, r10w
	sete	r8b
	and	eax, r8d
	test	r10w, r10w
	setne	r8b
	test	al, r8b
	je	.L256
	mov	eax, 2
	.p2align 6
.L257:
	movzx	r9d, WORD PTR [rcx+rax]
	movzx	r10d, WORD PTR [rdx+rax]
	test	r9w, r9w
	setne	r8b
	cmp	r9w, r10w
	sete	r11b
	and	r8d, r11d
	test	r10w, r10w
	setne	r11b
	add	rax, 2
	test	r8b, r11b
	jne	.L257
.L256:
	mov	eax, -1
	cmp	r9w, r10w
	jb	.L255
	cmp	r10w, r9w
	setb	al
	movzx	eax, al
.L255:
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
.L262:
	movzx	r9d, WORD PTR [rdx+r8]
	mov	WORD PTR [rax+r8], r9w
	add	r8, 2
	test	r9w, r9w
	jne	.L262
	ret
	.seh_endproc
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	cmp	WORD PTR [rcx], 0
	je	.L267
	mov	rax, rcx
	.p2align 4
.L266:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L266
.L265:
	sub	rax, rcx
	sar	rax
	ret
.L267:
	mov	rax, rcx
	jmp	.L265
	.seh_endproc
	.globl	wcsncmp
	.def	wcsncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcsncmp
wcsncmp:
	.seh_endprologue
	mov	eax, 0
	test	r8, r8
	je	.L269
	.p2align 6
.L270:
	movzx	r10d, WORD PTR [rcx]
	movzx	r9d, WORD PTR [rdx]
	test	r10w, r10w
	setne	al
	cmp	r10w, r9w
	sete	r10b
	and	eax, r10d
	test	r9w, r9w
	setne	r9b
	test	al, r9b
	je	.L278
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	jne	.L270
	mov	eax, 0
	jmp	.L269
.L274:
	cmp	ax, cx
	setb	al
	movzx	eax, al
.L269:
	ret
.L278:
	movzx	ecx, WORD PTR [rcx]
	movzx	eax, WORD PTR [rdx]
	cmp	cx, ax
	jnb	.L274
	mov	eax, -1
	jmp	.L269
	.seh_endproc
	.globl	wmemchr
	.def	wmemchr;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemchr
wmemchr:
	.seh_endprologue
	mov	eax, 0
	test	r8, r8
	je	.L279
	.p2align 4
.L280:
	cmp	WORD PTR [rcx], dx
	je	.L285
	add	rcx, 2
	sub	r8, 1
	jne	.L280
	mov	eax, 0
	jmp	.L279
.L285:
	mov	rax, rcx
.L279:
	ret
	.seh_endproc
	.globl	wmemcmp
	.def	wmemcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcmp
wmemcmp:
	.seh_endprologue
	mov	eax, 0
	test	r8, r8
	je	.L286
	.p2align 5
.L287:
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L295
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	jne	.L287
	mov	eax, 0
.L286:
	ret
.L291:
	cmp	ax, cx
	setb	al
	movzx	eax, al
	jmp	.L286
.L295:
	movzx	ecx, WORD PTR [rcx]
	movzx	eax, WORD PTR [rdx]
	cmp	cx, ax
	jnb	.L291
	mov	eax, -1
	jmp	.L286
	.seh_endproc
	.globl	wmemcpy
	.def	wmemcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcpy
wmemcpy:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L297
	mov	r9d, 0
	.p2align 5
.L298:
	movzx	r10d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], r10w
	add	r9, 1
	cmp	r9, r8
	jne	.L298
.L297:
	ret
	.seh_endproc
	.globl	wmemmove
	.def	wmemmove;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemmove
wmemmove:
	.seh_endprologue
	mov	rax, rcx
	cmp	rcx, rdx
	je	.L301
	mov	r9, rcx
	sub	r9, rdx
	lea	rcx, [r8+r8]
	cmp	r9, rcx
	jb	.L302
	mov	r9d, 0
	test	r8, r8
	je	.L301
	.p2align 5
.L303:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	add	r9, 1
	cmp	r9, r8
	jne	.L303
	jmp	.L301
.L302:
	lea	r9, -1[r8]
	test	r8, r8
	je	.L301
	.p2align 5
.L304:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	sub	r9, 1
	cmp	r9, -1
	jne	.L304
.L301:
	ret
	.seh_endproc
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L310
	mov	r9d, 0
	.p2align 4
.L311:
	mov	WORD PTR [rax+r9*2], dx
	add	r9, 1
	cmp	r9, r8
	jne	.L311
.L310:
	ret
	.seh_endproc
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	.seh_endprologue
	cmp	rcx, rdx
	jnb	.L314
	test	r8, r8
	je	.L313
	.p2align 5
.L316:
	movzx	eax, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[rdx+r8], al
	sub	r8, 1
	jne	.L316
.L313:
	ret
.L314:
	je	.L313
	test	r8, r8
	je	.L313
	mov	eax, 0
	.p2align 5
.L317:
	movzx	r9d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx+rax], r9b
	add	rax, 1
	cmp	rax, r8
	jne	.L317
	jmp	.L313
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
	mov	ecx, edx
	rol	rax, cl
	ret
	.seh_endproc
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
	mov	r8d, ecx
	shr	r8d, 24
	mov	edx, ecx
	shr	edx, 8
	and	edx, 65280
	mov	eax, ecx
	sal	eax, 8
	and	eax, 16711680
	sal	ecx, 24
	or	ecx, r8d
	or	edx, ecx
	or	eax, edx
	ret
	.seh_endproc
	.globl	bswap_64
	.def	bswap_64;	.scl	2;	.type	32;	.endef
	.seh_proc	bswap_64
bswap_64:
	push	rsi
	.seh_pushreg	rsi
	push	rbx
	.seh_pushreg	rbx
	.seh_endprologue
	mov	rdx, rcx
	mov	rbx, rcx
	shr	rbx, 56
	mov	r11, rcx
	shr	r11, 40
	and	r11d, 65280
	mov	r10, rcx
	shr	r10, 24
	and	r10d, 16711680
	mov	r9, rcx
	shr	r9, 8
	and	r9d, 4278190080
	mov	r8, rcx
	sal	r8, 8
	movabs	rax, 1095216660480
	and	r8, rax
	sal	rcx, 24
	movabs	rax, 280375465082880
	and	rcx, rax
	mov	rax, rdx
	sal	rax, 40
	movabs	rsi, 71776119061217280
	and	rax, rsi
	sal	rdx, 56
	or	rdx, rbx
	or	rdx, r11
	or	rdx, r10
	or	rdx, r9
	or	rdx, r8
	or	rdx, rcx
	or	rax, rdx
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.globl	ffs
	.def	ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	ffs
ffs:
	.seh_endprologue
	mov	eax, 0
	.p2align 4
.L336:
	bt	ecx, eax
	jc	.L338
	add	eax, 1
	cmp	eax, 32
	jne	.L336
	mov	eax, 0
	jmp	.L333
.L338:
	add	eax, 1
.L333:
	ret
	.seh_endproc
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	.seh_endprologue
	mov	eax, ecx
	test	ecx, ecx
	je	.L339
	and	eax, 1
	jne	.L339
	mov	eax, 1
	.p2align 4
.L341:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L341
.L339:
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
	ja	.L344
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
	movzx	eax, al
.L344:
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
	ja	.L347
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
	movzx	eax, al
.L347:
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
	ja	.L353
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	.L350
.L353:
	fstp	st(0)
.L350:
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
	jp	.L356
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L362
	jne	.L362
.L356:
	ret
.L362:
	movss	xmm1, DWORD PTR .LC9[rip]
	test	edx, edx
	jns	.L360
	movss	xmm1, DWORD PTR .LC10[rip]
	jmp	.L360
	.p2align 5
.L359:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L356
	mulss	xmm1, xmm1
.L360:
	test	dl, 1
	je	.L359
	mulss	xmm0, xmm1
	jmp	.L359
	.seh_endproc
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L364
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L370
	jne	.L370
.L364:
	ret
.L370:
	movsd	xmm1, QWORD PTR .LC11[rip]
	test	edx, edx
	jns	.L368
	movsd	xmm1, QWORD PTR .LC12[rip]
	jmp	.L368
	.p2align 5
.L367:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L364
	mulsd	xmm1, xmm1
.L368:
	test	dl, 1
	je	.L367
	mulsd	xmm0, xmm1
	jmp	.L367
	.seh_endproc
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	.seh_endprologue
	mov	rax, rcx
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L372
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L378
	jne	.L378
	jmp	.L372
.L380:
	fstp	st(0)
.L372:
	fstp	TBYTE PTR [rax]
	ret
.L378:
	test	r8d, r8d
	js	.L379
	fld	DWORD PTR .LC9[rip]
	jmp	.L376
.L379:
	fld	DWORD PTR .LC10[rip]
	jmp	.L376
	.p2align 5
.L375:
	mov	edx, r8d
	shr	edx, 31
	add	edx, r8d
	sar	edx
	mov	r8d, edx
	je	.L380
	fmul	st, st(0)
.L376:
	test	r8b, 1
	je	.L375
	fmul	st(1), st
	jmp	.L375
	.seh_endproc
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L382
	add	r8, rdx
	mov	r9, rcx
	.p2align 5
.L383:
	add	rdx, 1
	add	r9, 1
	movzx	r10d, BYTE PTR -1[r9]
	xor	r10b, BYTE PTR -1[rdx]
	mov	BYTE PTR -1[r9], r10b
	cmp	r8, rdx
	jne	.L383
.L382:
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
	je	.L387
	.p2align 5
.L386:
	movzx	edx, BYTE PTR [rsi]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	je	.L389
	add	rsi, 1
	add	rax, 1
	sub	rbx, 1
	jne	.L386
.L387:
	mov	BYTE PTR [rax], 0
.L389:
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
	je	.L398
.L392:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L399
.L391:
	ret
.L398:
	mov	rax, rdx
	jmp	.L391
.L399:
	add	rax, 1
	cmp	rdx, rax
	jne	.L392
	mov	rax, rdx
	jmp	.L391
	.seh_endproc
	.globl	strpbrk
	.def	strpbrk;	.scl	2;	.type	32;	.endef
	.seh_proc	strpbrk
strpbrk:
	.seh_endprologue
	mov	rax, rcx
	movzx	r10d, BYTE PTR [rcx]
	test	r10b, r10b
	je	.L407
.L401:
	mov	r8, rdx
	.p2align 5
.L404:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	je	.L408
	add	r8, 1
	cmp	r9b, r10b
	jne	.L404
.L402:
	ret
.L407:
	mov	eax, 0
	jmp	.L402
.L408:
	add	rax, 1
	movzx	r10d, BYTE PTR [rax]
	test	r10b, r10b
	jne	.L401
	mov	eax, 0
	jmp	.L402
	.seh_endproc
	.globl	strrchr
	.def	strrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strrchr
strrchr:
	.seh_endprologue
	mov	r8d, 0
	.p2align 5
.L411:
	movzx	eax, BYTE PTR [rcx]
	movsx	r9d, al
	cmp	r9d, edx
	cmove	r8, rcx
	add	rcx, 1
	test	al, al
	jne	.L411
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
	je	.L414
	movsx	r12d, BYTE PTR [rdi]
.L416:
	mov	edx, r12d
	mov	rcx, rsi
	call	strchr
	mov	rbx, rax
	test	rax, rax
	je	.L414
	mov	r8, rbp
	mov	rdx, rdi
	mov	rcx, rbx
	call	strncmp
	test	eax, eax
	je	.L414
	lea	rsi, 1[rbx]
	jmp	.L416
.L414:
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
	ja	.L429
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L423
	comisd	xmm2, xmm1
	ja	.L422
.L423:
	ret
.L429:
	comisd	xmm1, xmm2
	jbe	.L423
.L422:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	jmp	.L423
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
	mov	rax, rcx
	test	r9, r9
	je	.L430
	cmp	rdx, r9
	jb	.L435
	sub	rdx, r9
	mov	rsi, rdx
	add	rsi, rcx
	jc	.L436
	movzx	ebp, BYTE PTR [r8]
	lea	rdi, -1[r9]
	lea	r12, 1[r8]
	jmp	.L433
	.p2align 4
.L432:
	add	rbx, 1
	cmp	rsi, rbx
	jb	.L439
.L433:
	cmp	BYTE PTR [rbx], bpl
	jne	.L432
	lea	rcx, 1[rbx]
	mov	r8, rdi
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.L432
	mov	rax, rbx
	jmp	.L430
.L439:
	mov	eax, 0
.L430:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
.L435:
	mov	eax, 0
	jmp	.L430
.L436:
	mov	eax, 0
	jmp	.L430
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
	ja	.L459
.L442:
	mov	eax, 0
	comisd	xmm0, QWORD PTR .LC14[rip]
	jb	.L458
	movsd	xmm2, QWORD PTR .LC12[rip]
	movsd	xmm1, QWORD PTR .LC14[rip]
	.p2align 4
.L446:
	add	eax, 1
	mulsd	xmm0, xmm2
	comisd	xmm0, xmm1
	jnb	.L446
.L447:
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L449
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L449:
	ret
.L459:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	mov	ecx, 1
	jmp	.L442
.L458:
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	setp	r8b
	mov	eax, 1
	cmovne	r8d, eax
	movsd	xmm1, QWORD PTR .LC12[rip]
	comisd	xmm1, xmm0
	seta	r9b
	mov	eax, 0
	test	r8b, r9b
	je	.L447
	.p2align 4
.L448:
	sub	eax, 1
	addsd	xmm0, xmm0
	comisd	xmm1, xmm0
	ja	.L448
	jmp	.L447
	.seh_endproc
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	mov	r8, rcx
	test	rcx, rcx
	je	.L463
	mov	ecx, 0
	.p2align 5
.L462:
	mov	rax, r8
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rcx, rax
	add	rdx, rdx
	shr	r8
	jne	.L462
.L460:
	mov	rax, rcx
	ret
.L463:
	mov	ecx, 0
	jmp	.L460
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
.L466:
	test	edx, edx
	js	.L473
	add	edx, edx
	cmp	edx, ecx
	setb	r10b
	add	eax, eax
	setne	r9b
	test	r10b, r9b
	jne	.L466
	test	eax, eax
	je	.L479
.L473:
	mov	r9d, 0
	jmp	.L471
	.p2align 4
.L470:
	shr	edx
	shr	eax
	je	.L472
.L471:
	cmp	ecx, edx
	jb	.L470
	sub	ecx, edx
	or	r9d, eax
	jmp	.L470
.L479:
	mov	r9d, eax
.L472:
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
	mov	edx, ecx
	sar	dl, 7
	mov	eax, edx
	xor	eax, ecx
	mov	r8d, 7
	cmp	cl, dl
	je	.L480
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	r8d, -1[rax]
.L480:
	mov	eax, r8d
	ret
	.seh_endproc
	.globl	__clrsbdi2
	.def	__clrsbdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbdi2
__clrsbdi2:
	.seh_endprologue
	mov	rdx, rcx
	sar	rdx, 63
	mov	rax, rcx
	xor	rax, rdx
	mov	r8d, 63
	cmp	rcx, rdx
	je	.L483
	bsr	rax, rax
	xor	rax, 63
	lea	r8d, -1[rax]
.L483:
	mov	eax, r8d
	ret
	.seh_endproc
	.globl	__mulsi3
	.def	__mulsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3
__mulsi3:
	.seh_endprologue
	test	ecx, ecx
	je	.L489
	mov	r8d, 0
	.p2align 5
.L488:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	r8d, eax
	add	edx, edx
	shr	ecx
	jne	.L488
.L486:
	mov	eax, r8d
	ret
.L489:
	mov	r8d, ecx
	jmp	.L486
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
	jnb	.L492
.L495:
	lea	r11d, 0[0+r10*8]
	mov	edx, 0
	test	r10d, r10d
	je	.L494
	.p2align 5
.L498:
	mov	r10, QWORD PTR [r9+rdx]
	mov	QWORD PTR [rcx+rdx], r10
	add	rdx, 8
	cmp	r11, rdx
	jne	.L498
.L494:
	cmp	eax, r8d
	jnb	.L491
	mov	eax, eax
	.p2align 5
.L499:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	eax, r8d
	jb	.L499
.L491:
	ret
.L492:
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jb	.L495
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L491
	.p2align 5
.L500:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L500
	jmp	.L491
	.seh_endproc
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	.seh_endprologue
	mov	r9d, r8d
	shr	r9d
	cmp	rcx, rdx
	jnb	.L507
.L510:
	lea	r10d, [r9+r9]
	mov	eax, 0
	test	r9d, r9d
	je	.L509
	.p2align 5
.L513:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
	cmp	rax, r10
	jne	.L513
.L509:
	test	r8b, 1
	je	.L506
	lea	eax, -1[r8]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], dl
.L506:
	ret
.L507:
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jb	.L510
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L506
	.p2align 5
.L514:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	cmp	rax, -1
	jne	.L514
	jmp	.L506
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
	jnb	.L520
.L523:
	lea	r11d, 0[0+r10*4]
	mov	edx, 0
	test	r10d, r10d
	je	.L522
	.p2align 5
.L526:
	mov	r10d, DWORD PTR [r9+rdx]
	mov	DWORD PTR [rcx+rdx], r10d
	add	rdx, 4
	cmp	r11, rdx
	jne	.L526
.L522:
	cmp	eax, r8d
	jnb	.L519
	mov	eax, eax
	.p2align 5
.L527:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	eax, r8d
	jb	.L527
.L519:
	ret
.L520:
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jb	.L523
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L519
	.p2align 5
.L528:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	cmp	rax, -1
	jne	.L528
	jmp	.L519
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
	js	.L542
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
.L541:
	ret
.L542:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	addsd	xmm0, xmm0
	jmp	.L541
	.seh_endproc
	.globl	__ulltof
	.def	__ulltof;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltof
__ulltof:
	.seh_endprologue
	test	rcx, rcx
	js	.L545
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
.L544:
	ret
.L545:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
	jmp	.L544
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
.L550:
	mov	edx, r8d
	sub	edx, eax
	bt	ecx, edx
	jc	.L548
	add	eax, 1
	cmp	eax, 16
	jne	.L550
.L548:
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
.L554:
	bt	ecx, eax
	jc	.L552
	add	eax, 1
	cmp	eax, 16
	jne	.L554
.L552:
	ret
	.seh_endproc
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC15[rip]
	jnb	.L562
	cvttss2si	eax, xmm0
.L556:
	ret
.L562:
	subss	xmm0, DWORD PTR .LC15[rip]
	cvttss2si	eax, xmm0
	add	eax, 32768
	jmp	.L556
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
.L564:
	mov	edx, r8d
	sar	edx, cl
	and	edx, 1
	add	eax, edx
	add	ecx, 1
	cmp	ecx, 16
	jne	.L564
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
.L567:
	mov	eax, r8d
	sar	eax, cl
	and	eax, 1
	add	edx, eax
	add	ecx, 1
	cmp	ecx, 16
	jne	.L567
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__mulsi3_iq2000
	.def	__mulsi3_iq2000;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_iq2000
__mulsi3_iq2000:
	.seh_endprologue
	test	ecx, ecx
	je	.L572
	mov	r8d, 0
	.p2align 5
.L571:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	r8d, eax
	add	edx, edx
	shr	ecx
	jne	.L571
.L569:
	mov	eax, r8d
	ret
.L572:
	mov	r8d, ecx
	jmp	.L569
	.seh_endproc
	.globl	__mulsi3_lm32
	.def	__mulsi3_lm32;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_lm32
__mulsi3_lm32:
	.seh_endprologue
	mov	r8d, ecx
	test	ecx, ecx
	je	.L574
	test	edx, edx
	je	.L578
	mov	r8d, 0
	.p2align 5
.L576:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	r8d, eax
	add	ecx, ecx
	shr	edx
	jne	.L576
.L574:
	mov	eax, r8d
	ret
.L578:
	mov	r8d, edx
	jmp	.L574
	.seh_endproc
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jnb	.L588
	.p2align 5
.L581:
	test	edx, edx
	js	.L588
	add	edx, edx
	cmp	edx, ecx
	setb	r10b
	add	eax, eax
	setne	r9b
	test	r10b, r9b
	jne	.L581
	test	eax, eax
	je	.L594
.L588:
	mov	r9d, 0
	jmp	.L586
	.p2align 4
.L585:
	shr	edx
	shr	eax
	je	.L587
.L586:
	cmp	ecx, edx
	jb	.L585
	sub	ecx, edx
	or	r9d, eax
	jmp	.L585
.L594:
	mov	r9d, eax
.L587:
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
	ja	.L595
	comiss	xmm0, xmm1
	seta	al
	movzx	eax, al
.L595:
	ret
	.seh_endproc
	.globl	__mspabi_cmpd
	.def	__mspabi_cmpd;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpd
__mspabi_cmpd:
	.seh_endprologue
	mov	eax, -1
	comisd	xmm1, xmm0
	ja	.L598
	comisd	xmm0, xmm1
	seta	al
	movzx	eax, al
.L598:
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
	js	.L611
	je	.L609
	mov	r11d, 0
.L605:
	mov	r8d, 1
	mov	r9d, 0
	.p2align 6
.L607:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	r9d, eax
	add	ecx, ecx
	sar	edx
	setne	r10b
	cmp	r8b, 31
	setbe	al
	add	r8d, 1
	test	r10b, al
	jne	.L607
.L606:
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmovne	r9d, eax
	mov	eax, r9d
	ret
.L611:
	neg	edx
	mov	r11d, 1
	jmp	.L605
.L609:
	mov	r11d, edx
	mov	r9d, edx
	jmp	.L606
	.seh_endproc
	.globl	__divsi3
	.def	__divsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__divsi3
__divsi3:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	test	ecx, ecx
	js	.L620
	test	edx, edx
	js	.L621
	mov	r8d, 0
	call	__udivmodsi4
	jmp	.L612
.L620:
	neg	ecx
	test	edx, edx
	js	.L622
	mov	r8d, 0
	call	__udivmodsi4
.L616:
	neg	eax
.L612:
	add	rsp, 40
	ret
.L621:
	neg	edx
	mov	r8d, 0
	call	__udivmodsi4
	jmp	.L616
.L622:
	neg	edx
	mov	r8d, 0
	call	__udivmodsi4
	jmp	.L612
	.seh_endproc
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	sub	rsp, 40
	.seh_stackalloc	40
	.seh_endprologue
	test	ecx, ecx
	js	.L626
	mov	eax, edx
	neg	eax
	cmovns	edx, eax
	mov	r8d, 1
	call	__udivmodsi4
	jmp	.L623
.L626:
	neg	ecx
	mov	eax, edx
	neg	eax
	cmovns	edx, eax
	mov	r8d, 1
	call	__udivmodsi4
	neg	eax
.L623:
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
	jnb	.L635
	.p2align 5
.L628:
	test	ax, ax
	js	.L635
	add	eax, eax
	cmp	ax, r10w
	setb	cl
	add	r9w, r9w
	setne	dl
	test	cl, dl
	jne	.L628
	test	r9w, r9w
	je	.L641
.L635:
	mov	edx, 0
	jmp	.L633
	.p2align 4
.L632:
	shr	ax
	shr	r9w
	je	.L634
.L633:
	cmp	r10w, ax
	jb	.L632
	sub	r10d, eax
	or	edx, r9d
	jmp	.L632
.L641:
	mov	edx, r9d
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
	jnb	.L650
	.p2align 5
.L643:
	test	edx, edx
	js	.L650
	add	edx, edx
	cmp	edx, ecx
	setb	r10b
	add	eax, eax
	setne	r9b
	test	r10b, r9b
	jne	.L643
	test	eax, eax
	je	.L656
.L650:
	mov	r9d, 0
	jmp	.L648
	.p2align 4
.L647:
	shr	edx
	shr	eax
	je	.L649
.L648:
	cmp	ecx, edx
	jb	.L647
	sub	ecx, edx
	or	r9d, eax
	jmp	.L647
.L656:
	mov	r9d, eax
.L649:
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
	je	.L658
	lea	ecx, -32[rdx]
	sal	r8d, cl
	mov	eax, 0
.L659:
	sal	r8, 32
	mov	eax, eax
	or	rax, r8
.L657:
	ret
.L658:
	mov	rax, rcx
	test	edx, edx
	je	.L657
	mov	ecx, edx
	sal	eax, cl
	mov	r9, r8
	sar	r9, 32
	sal	r9d, cl
	mov	ecx, 32
	sub	ecx, edx
	shr	r8d, cl
	or	r8d, r9d
	jmp	.L659
	.seh_endproc
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
	je	.L663
	lea	ecx, -64[rdx]
	sal	rax, cl
	mov	r9d, 0
.L664:
	mov	rcx, rax
	mov	rax, r9
	mov	rdx, rcx
.L665:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	r11, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], r11
	movdqa	xmm0, XMMWORD PTR [rsp]
	movq	xmm1, rdx
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
.L663:
	test	edx, edx
	je	.L666
	mov	r9, rax
	mov	ecx, edx
	sal	r9, cl
	sal	r8, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	or	rax, r8
	jmp	.L664
.L666:
	mov	rdx, r8
	jmp	.L665
	.seh_endproc
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L668
	sar	r8, 32
	mov	eax, r8d
	sar	eax, 31
	lea	ecx, -32[rdx]
	sar	r8d, cl
.L669:
	mov	r8d, r8d
	sal	rax, 32
	or	rax, r8
.L667:
	ret
.L668:
	mov	rax, rcx
	test	edx, edx
	je	.L667
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
	or	r8d, r9d
	jmp	.L669
	.seh_endproc
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
	je	.L673
	mov	r10, rax
	sar	r10, 63
	lea	ecx, -64[rdx]
	sar	rax, cl
.L674:
	mov	rdx, rax
	mov	rax, r10
.L675:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	rcx, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	movq	xmm1, rax
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
.L673:
	test	edx, edx
	je	.L676
	mov	r10, rax
	mov	ecx, edx
	sar	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L674
.L676:
	mov	rdx, r8
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
	mov	rbx, rcx
	shr	rbx, 56
	mov	r11, rcx
	shr	r11, 40
	and	r11d, 65280
	mov	r10, rcx
	shr	r10, 24
	and	r10d, 16711680
	mov	r9, rcx
	shr	r9, 8
	and	r9d, 4278190080
	mov	r8, rcx
	sal	r8, 8
	movabs	rax, 1095216660480
	and	r8, rax
	sal	rcx, 24
	movabs	rax, 280375465082880
	and	rcx, rax
	mov	rax, rdx
	sal	rax, 40
	movabs	rsi, 71776119061217280
	and	rax, rsi
	sal	rdx, 56
	or	rdx, rbx
	or	rdx, r11
	or	rdx, r10
	or	rdx, r9
	or	rdx, r8
	or	rdx, rcx
	or	rax, rdx
	pop	rbx
	pop	rsi
	ret
	.seh_endproc
	.globl	__bswapsi2
	.def	__bswapsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__bswapsi2
__bswapsi2:
	.seh_endprologue
	mov	r8d, ecx
	shr	r8d, 24
	mov	edx, ecx
	shr	edx, 8
	and	edx, 65280
	mov	eax, ecx
	sal	eax, 8
	and	eax, 16711680
	sal	ecx, 24
	or	ecx, r8d
	or	edx, ecx
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
	add	r8d, eax
	test	dl, -16
	sete	al
	movzx	eax, al
	sal	eax, 2
	mov	ecx, 4
	sub	ecx, eax
	shr	edx, cl
	lea	r9d, [rax+r8]
	test	dl, 12
	sete	r8b
	movzx	r8d, r8b
	add	r8d, r8d
	mov	eax, 2
	mov	ecx, eax
	sub	ecx, r8d
	shr	edx, cl
	add	r8d, r9d
	sub	eax, edx
	test	dl, 2
	mov	edx, 0
	cmovne	eax, edx
	add	eax, r8d
	ret
	.seh_endproc
	.globl	__clzti2
	.def	__clzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clzti2
__clzti2:
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	test	rcx, rcx
	sete	al
	movzx	eax, al
	lea	edx, -1[rax]
	movsx	rdx, edx
	and	rdx, rcx
	test	rcx, rcx
	mov	ecx, 0
	cmove	rcx, r8
	or	rdx, rcx
	bsr	rdx, rdx
	xor	rdx, 63
	sal	eax, 6
	add	eax, edx
	ret
	.seh_endproc
	.globl	__cmpdi2
	.def	__cmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmpdi2
__cmpdi2:
	.seh_endprologue
	mov	r8, rcx
	sar	r8, 32
	mov	r9, rdx
	sar	r9, 32
	mov	eax, 0
	cmp	r9d, r8d
	jg	.L681
	mov	eax, 2
	jl	.L681
	mov	eax, 0
	cmp	ecx, edx
	jb	.L681
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L681:
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
	mov	rdx, QWORD PTR 8[rdx]
	mov	eax, 0
	cmp	rdx, rcx
	jg	.L688
	mov	eax, 2
	jl	.L688
	mov	eax, 0
	cmp	r8, r9
	jb	.L688
	cmp	r9, r8
	setb	al
	movzx	eax, al
	add	eax, 1
.L688:
	ret
	.seh_endproc
	.globl	__ctzsi2
	.def	__ctzsi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzsi2
__ctzsi2:
	.seh_endprologue
	mov	eax, ecx
	test	cx, cx
	sete	dl
	movzx	edx, dl
	sal	edx, 4
	mov	ecx, edx
	shr	eax, cl
	test	al, al
	sete	cl
	movzx	ecx, cl
	sal	ecx, 3
	shr	eax, cl
	add	edx, ecx
	test	al, 15
	sete	cl
	movzx	ecx, cl
	sal	ecx, 2
	shr	eax, cl
	add	edx, ecx
	test	al, 3
	sete	cl
	movzx	ecx, cl
	add	ecx, ecx
	shr	eax, cl
	and	eax, 3
	add	ecx, edx
	mov	edx, eax
	not	edx
	shr	eax
	mov	r8d, 2
	sub	r8d, eax
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, r8d
	add	eax, ecx
	ret
	.seh_endproc
	.globl	__ctzti2
	.def	__ctzti2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzti2
__ctzti2:
	.seh_endprologue
	mov	r8, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	test	r8, r8
	sete	al
	movzx	eax, al
	mov	ecx, 0
	cmovne	rdx, rcx
	lea	ecx, -1[rax]
	movsx	rcx, ecx
	and	rcx, r8
	or	rdx, rcx
	rep bsf	rdx, rdx
	sal	eax, 6
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
	jne	.L697
	xor	eax, eax
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	mov	edx, 0
	cmove	eax, edx
.L696:
	ret
.L697:
	rep bsf	rax, rax
	add	eax, 1
	jmp	.L696
	.seh_endproc
	.globl	__lshrdi3
	.def	__lshrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrdi3
__lshrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L701
	shr	r8, 32
	lea	ecx, -32[rdx]
	shr	r8d, cl
	mov	eax, 0
.L702:
	mov	r8d, r8d
	sal	rax, 32
	or	rax, r8
.L700:
	ret
.L701:
	mov	rax, rcx
	test	edx, edx
	je	.L700
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
	or	r8d, r9d
	jmp	.L702
	.seh_endproc
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
	je	.L706
	lea	ecx, -64[rdx]
	shr	rax, cl
	mov	r10d, 0
.L707:
	mov	rdx, rax
	mov	rax, r10
.L708:
	movaps	XMMWORD PTR [rsp], xmm0
	mov	rcx, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	movq	xmm1, rax
	punpcklqdq	xmm0, xmm1
	add	rsp, 24
	ret
.L706:
	test	edx, edx
	je	.L709
	mov	r10, rax
	mov	ecx, edx
	shr	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L707
.L709:
	mov	rdx, r8
	jmp	.L708
	.seh_endproc
	.globl	__muldsi3
	.def	__muldsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldsi3
__muldsi3:
	.seh_endprologue
	movzx	eax, cx
	movzx	r8d, dx
	mov	r9d, eax
	imul	r9d, r8d
	mov	r10d, r9d
	shr	r10d, 16
	shr	ecx, 16
	imul	r8d, ecx
	add	r8d, r10d
	mov	r10d, r8d
	shr	r10d, 16
	movzx	r8d, r8w
	movzx	r9d, r9w
	shr	edx, 16
	imul	eax, edx
	add	eax, r8d
	mov	r8d, eax
	sal	r8d, 16
	shr	eax, 16
	imul	ecx, edx
	lea	edx, [r10+rcx]
	lea	edx, [rax+rdx]
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
	mov	eax, ecx
	mov	r8d, edx
	mov	r9, rax
	imul	r9, r8
	mov	r10, r9
	shr	r10, 32
	shr	rcx, 32
	imul	r8, rcx
	add	r8, r10
	mov	r10, r8
	shr	r10, 32
	mov	r8d, r8d
	mov	r9d, r9d
	shr	rdx, 32
	imul	rax, rdx
	add	rax, r8
	mov	r8, rax
	sal	r8, 32
	add	r9, r8
	shr	rax, 32
	imul	rcx, rdx
	lea	rdx, [r10+rcx]
	add	rax, rdx
	movaps	XMMWORD PTR [rsp], xmm0
	mov	rcx, QWORD PTR 8[rsp]
	mov	QWORD PTR [rsp], r9
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	movq	xmm1, rax
	punpcklqdq	xmm0, xmm1
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
	mov	rsi, QWORD PTR [rcx]
	mov	rbx, QWORD PTR 8[rcx]
	mov	rbp, QWORD PTR [rdx]
	mov	rdi, QWORD PTR 8[rdx]
	mov	rdx, rbp
	mov	rcx, rsi
	call	__mulddi3
	movaps	XMMWORD PTR 32[rsp], xmm0
	mov	rdx, QWORD PTR 32[rsp]
	mov	rax, QWORD PTR 40[rsp]
	mov	QWORD PTR 32[rsp], rdx
	imul	rbx, rbp
	imul	rdi, rsi
	add	rbx, rdi
	add	rax, rbx
	mov	rsi, QWORD PTR 32[rsp]
	mov	QWORD PTR 32[rsp], rsi
	mov	QWORD PTR 40[rsp], rax
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
	mov	rax, QWORD PTR 8[rcx]
	xor	rax, QWORD PTR [rcx]
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
	movsd	xmm1, QWORD PTR .LC14[rip]
	jmp	.L725
	.p2align 5
.L723:
	mov	eax, ecx
	shr	eax, 31
	add	eax, ecx
	sar	eax
	mov	ecx, eax
	je	.L724
	mulsd	xmm0, xmm0
.L725:
	test	cl, 1
	je	.L723
	mulsd	xmm1, xmm0
	jmp	.L723
.L724:
	test	edx, edx
	js	.L727
.L722:
	movapd	xmm0, xmm1
	ret
.L727:
	movsd	xmm0, QWORD PTR .LC14[rip]
	divsd	xmm0, xmm1
	movapd	xmm1, xmm0
	jmp	.L722
	.seh_endproc
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	.seh_endprologue
	mov	ecx, edx
	movss	xmm1, DWORD PTR .LC16[rip]
	jmp	.L731
	.p2align 5
.L729:
	mov	eax, ecx
	shr	eax, 31
	add	eax, ecx
	sar	eax
	mov	ecx, eax
	je	.L730
	mulss	xmm0, xmm0
.L731:
	test	cl, 1
	je	.L729
	mulss	xmm1, xmm0
	jmp	.L729
.L730:
	test	edx, edx
	js	.L733
.L728:
	movaps	xmm0, xmm1
	ret
.L733:
	movss	xmm0, DWORD PTR .LC16[rip]
	divss	xmm0, xmm1
	movaps	xmm1, xmm0
	jmp	.L728
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
	jb	.L734
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L734
	mov	eax, 0
	cmp	ecx, edx
	jb	.L734
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L734:
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
	mov	r8, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	mov	r9, QWORD PTR [rdx]
	mov	rdx, QWORD PTR 8[rdx]
	mov	eax, 0
	cmp	rcx, rdx
	jb	.L741
	mov	eax, 2
	cmp	rdx, rcx
	jb	.L741
	mov	eax, 0
	cmp	r8, r9
	jb	.L741
	cmp	r9, r8
	setb	al
	movzx	eax, al
	add	eax, 1
.L741:
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
