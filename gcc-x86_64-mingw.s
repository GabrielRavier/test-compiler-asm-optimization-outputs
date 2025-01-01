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
	jb	.L4
	mov	r9d, 0
	cmp	rcx, rdx
	jne	.L8
	jmp	.L7
	.p2align 5
.L6:
	movzx	ecx, BYTE PTR -1[rdx+r8]
	mov	BYTE PTR -1[rax+r8], cl
	sub	r8, 1
.L4:
	test	r8, r8
	jne	.L6
.L7:
	ret
	.p2align 5
.L9:
	movzx	ecx, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rax+r9], cl
	add	r9, 1
.L8:
	cmp	r9, r8
	jne	.L9
	jmp	.L7
	.seh_endproc
	.globl	memccpy
	.def	memccpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memccpy
memccpy:
	.seh_endprologue
	movzx	r8d, r8b
	jmp	.L15
	.p2align 6
.L17:
	sub	r9, 1
	add	rdx, 1
	add	rcx, 1
.L15:
	test	r9, r9
	je	.L16
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], r10b
	movzx	r10d, r10b
	cmp	r8d, r10d
	jne	.L17
.L16:
	add	rcx, 1
	test	r9, r9
	mov	eax, 0
	cmovne	rax, rcx
	ret
	.seh_endproc
	.globl	memchr
	.def	memchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memchr
memchr:
	.seh_endprologue
	movzx	edx, dl
	jmp	.L21
	.p2align 5
.L23:
	add	rcx, 1
	sub	r8, 1
.L21:
	test	r8, r8
	je	.L22
	movzx	eax, BYTE PTR [rcx]
	cmp	edx, eax
	jne	.L23
.L22:
	test	r8, r8
	mov	eax, 0
	cmovne	rax, rcx
	ret
	.seh_endproc
	.globl	memcmp
	.def	memcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	memcmp
memcmp:
	.seh_endprologue
	jmp	.L27
	.p2align 5
.L29:
	sub	r8, 1
	add	rcx, 1
	add	rdx, 1
.L27:
	test	r8, r8
	je	.L28
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	je	.L29
.L28:
	mov	eax, 0
	test	r8, r8
	je	.L30
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
.L30:
	ret
	.seh_endproc
	.globl	memcpy
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memcpy
memcpy:
	.seh_endprologue
	mov	rax, rcx
	mov	r9d, 0
	jmp	.L33
	.p2align 5
.L34:
	movzx	r10d, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rax+r9], r10b
	add	r9, 1
.L33:
	cmp	r9, r8
	jne	.L34
	ret
	.seh_endproc
	.globl	memrchr
	.def	memrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memrchr
memrchr:
	.seh_endprologue
	movzx	edx, dl
	sub	r8, 1
.L36:
	cmp	r8, -1
	je	.L40
	movzx	r9d, BYTE PTR [rcx+r8]
	lea	r10, -1[r8]
	cmp	edx, r9d
	je	.L41
	mov	r8, r10
	jmp	.L36
.L41:
	lea	rax, [rcx+r8]
	jmp	.L37
.L40:
	mov	eax, 0
.L37:
	ret
	.seh_endproc
	.globl	memset
	.def	memset;	.scl	2;	.type	32;	.endef
	.seh_proc	memset
memset:
	.seh_endprologue
	mov	rax, rcx
	add	r8, rcx
	mov	r9, rcx
	jmp	.L43
	.p2align 4
.L44:
	mov	BYTE PTR [r9], dl
	add	r9, 1
.L43:
	cmp	r9, r8
	jne	.L44
	ret
	.seh_endproc
	.globl	stpcpy
	.def	stpcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	stpcpy
stpcpy:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L46
	.p2align 5
.L47:
	add	rdx, 1
	add	rax, 1
.L46:
	movzx	ecx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], cl
	test	cl, cl
	jne	.L47
	ret
	.seh_endproc
	.globl	strchrnul
	.def	strchrnul;	.scl	2;	.type	32;	.endef
	.seh_proc	strchrnul
strchrnul:
	.seh_endprologue
	mov	rax, rcx
	movzx	edx, dl
	jmp	.L49
	.p2align 4
.L51:
	add	rax, 1
.L49:
	cmp	BYTE PTR [rax], 0
	je	.L50
	movzx	ecx, BYTE PTR [rax]
	cmp	edx, ecx
	jne	.L51
.L50:
	ret
	.seh_endproc
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
	.seh_endprologue
	.p2align 5
.L54:
	movsx	eax, BYTE PTR [rcx]
	cmp	edx, eax
	je	.L55
	add	rcx, 1
	cmp	BYTE PTR -1[rcx], 0
	jne	.L54
	mov	eax, 0
	jmp	.L53
.L55:
	mov	rax, rcx
.L53:
	ret
	.seh_endproc
	.globl	strcmp
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strcmp
strcmp:
	.seh_endprologue
	jmp	.L58
	.p2align 5
.L60:
	add	rcx, 1
	add	rdx, 1
.L58:
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	jne	.L59
	cmp	BYTE PTR [rcx], 0
	jne	.L60
.L59:
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
	mov	rax, rcx
	jmp	.L62
	.p2align 4
.L63:
	add	rax, 1
.L62:
	cmp	BYTE PTR [rax], 0
	jne	.L63
	sub	rax, rcx
	ret
	.seh_endproc
	.globl	strncmp
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strncmp
strncmp:
	.seh_endprologue
	mov	eax, 0
	test	r8, r8
	je	.L65
	mov	rax, rcx
	lea	r9, -1[rcx+r8]
.L66:
	cmp	BYTE PTR [rax], 0
	je	.L67
	cmp	rax, r9
	setne	r8b
	cmp	BYTE PTR [rdx], 0
	setne	cl
	test	r8b, cl
	je	.L67
	movzx	ecx, BYTE PTR [rdx]
	cmp	BYTE PTR [rax], cl
	jne	.L67
	add	rax, 1
	add	rdx, 1
	jmp	.L66
.L67:
	movzx	eax, BYTE PTR [rax]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
.L65:
	ret
	.seh_endproc
	.globl	swab
	.def	swab;	.scl	2;	.type	32;	.endef
	.seh_proc	swab
swab:
	.seh_endprologue
	mov	rax, rcx
	add	r8, rcx
	jmp	.L71
	.p2align 6
.L72:
	movzx	r9d, BYTE PTR 1[rax]
	mov	BYTE PTR [rdx], r9b
	movzx	r9d, BYTE PTR [rax]
	mov	BYTE PTR 1[rdx], r9b
	add	rdx, 2
	add	rax, 2
.L71:
	mov	r9, r8
	sub	r9, rax
	cmp	r9, 1
	jg	.L72
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
	setbe	dl
	movzx	eax, cx
	sub	eax, 127
	cmp	eax, 32
	setbe	r8b
	mov	eax, 1
	or	dl, r8b
	jne	.L84
	movzx	edx, cx
	sub	edx, 8232
	cmp	edx, 1
	jbe	.L84
	movzx	ecx, cx
	sub	ecx, 65529
	cmp	ecx, 2
	setbe	al
	movzx	eax, al
.L84:
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
	jbe	.L94
	cmp	cx, 8231
	setbe	dl
	movzx	eax, cx
	sub	eax, 8234
	cmp	eax, 47061
	setbe	r8b
	mov	eax, 1
	or	dl, r8b
	jne	.L90
	movzx	edx, cx
	sub	edx, 57344
	cmp	edx, 8184
	jbe	.L90
	movzx	edx, cx
	sub	edx, 65532
	mov	eax, 0
	cmp	edx, 1048579
	ja	.L90
	not	ecx
	test	ecx, 65534
	setne	al
	movzx	eax, al
	jmp	.L90
.L94:
	lea	eax, 1[rcx]
	and	eax, 127
	cmp	eax, 32
	setg	al
	movzx	eax, al
.L90:
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
	jbe	.L96
	or	ecx, 32
	movzx	ecx, cx
	sub	ecx, 97
	cmp	ecx, 5
	setbe	dl
	movzx	edx, dl
.L96:
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
	jp	.L100
	ucomisd	xmm1, xmm1
	jp	.L103
	comisd	xmm0, xmm1
	jbe	.L106
	subsd	xmm0, xmm1
.L100:
	ret
.L103:
	movapd	xmm0, xmm1
	jmp	.L100
.L106:
	pxor	xmm0, xmm0
	jmp	.L100
	.seh_endproc
	.globl	fdimf
	.def	fdimf;	.scl	2;	.type	32;	.endef
	.seh_proc	fdimf
fdimf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L108
	ucomiss	xmm1, xmm1
	jp	.L111
	comiss	xmm0, xmm1
	jbe	.L114
	subss	xmm0, xmm1
.L108:
	ret
.L111:
	movaps	xmm0, xmm1
	jmp	.L108
.L114:
	pxor	xmm0, xmm0
	jmp	.L108
	.seh_endproc
	.globl	fmax
	.def	fmax;	.scl	2;	.type	32;	.endef
	.seh_proc	fmax
fmax:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L120
	ucomisd	xmm1, xmm1
	jp	.L116
	movmskpd	edx, xmm0
	and	edx, 1
	movmskpd	eax, xmm1
	and	eax, 1
	cmp	edx, eax
	je	.L117
	movmskpd	eax, xmm0
	test	al, 1
	je	.L116
	movapd	xmm0, xmm1
	jmp	.L116
.L117:
	movapd	xmm2, xmm1
	maxsd	xmm2, xmm0
	movapd	xmm0, xmm2
.L116:
	ret
.L120:
	movapd	xmm0, xmm1
	jmp	.L116
	.seh_endproc
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L128
	ucomiss	xmm1, xmm1
	jp	.L124
	movd	edx, xmm0
	and	edx, -2147483648
	movd	eax, xmm1
	and	eax, -2147483648
	cmp	edx, eax
	je	.L125
	movd	eax, xmm0
	test	eax, eax
	jns	.L124
	movaps	xmm0, xmm1
	jmp	.L124
.L125:
	movaps	xmm2, xmm1
	maxss	xmm2, xmm0
	movaps	xmm0, xmm2
.L124:
	ret
.L128:
	movaps	xmm0, xmm1
	jmp	.L124
	.seh_endproc
	.globl	fmaxl
	.def	fmaxl;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxl
fmaxl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L138
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L139
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
	je	.L135
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmovne	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
.L131:
	mov	rax, rcx
	ret
.L138:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L131
.L139:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L131
.L135:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	jmp	.L131
	.seh_endproc
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L141
	ucomisd	xmm1, xmm1
	jp	.L146
	movmskpd	edx, xmm0
	and	edx, 1
	movmskpd	eax, xmm1
	and	eax, 1
	cmp	edx, eax
	je	.L142
	movmskpd	eax, xmm0
	test	al, 1
	je	.L141
	movapd	xmm1, xmm0
	jmp	.L141
.L142:
	movapd	xmm2, xmm0
	minsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L141:
	movapd	xmm0, xmm1
	ret
.L146:
	movapd	xmm1, xmm0
	jmp	.L141
	.seh_endproc
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L149
	ucomiss	xmm1, xmm1
	jp	.L154
	movd	edx, xmm0
	and	edx, -2147483648
	movd	eax, xmm1
	and	eax, -2147483648
	cmp	edx, eax
	je	.L150
	movd	eax, xmm0
	test	eax, eax
	jns	.L149
	movaps	xmm1, xmm0
	jmp	.L149
.L150:
	movaps	xmm2, xmm0
	minss	xmm2, xmm1
	movaps	xmm1, xmm2
.L149:
	movaps	xmm0, xmm1
	ret
.L154:
	movaps	xmm1, xmm0
	jmp	.L149
	.seh_endproc
	.globl	fminl
	.def	fminl;	.scl	2;	.type	32;	.endef
	.seh_proc	fminl
fminl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L163
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L164
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
	je	.L160
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmove	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
.L156:
	mov	rax, rcx
	ret
.L163:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L156
.L164:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L156
.L160:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	jmp	.L156
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
	lea	rax, s.0[rip]
	lea	r8, digits[rip]
	jmp	.L166
	.p2align 5
.L167:
	mov	edx, ecx
	and	edx, 63
	movzx	edx, BYTE PTR [r8+rdx]
	mov	BYTE PTR [rax], dl
	add	rax, 1
	shr	ecx, 6
.L166:
	test	ecx, ecx
	jne	.L167
	mov	BYTE PTR [rax], 0
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
	je	.L173
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	QWORD PTR [rdx], rcx
	cmp	QWORD PTR [rcx], 0
	je	.L170
	mov	rax, QWORD PTR [rcx]
	mov	QWORD PTR 8[rax], rcx
.L170:
	ret
.L173:
	mov	QWORD PTR 8[rcx], 0
	mov	QWORD PTR [rcx], 0
	jmp	.L170
	.seh_endproc
	.globl	remque
	.def	remque;	.scl	2;	.type	32;	.endef
	.seh_proc	remque
remque:
	.seh_endprologue
	cmp	QWORD PTR [rcx], 0
	je	.L175
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L175:
	cmp	QWORD PTR 8[rcx], 0
	je	.L174
	mov	rax, QWORD PTR 8[rcx]
	mov	rdx, QWORD PTR [rcx]
	mov	QWORD PTR [rax], rdx
.L174:
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
	mov	r14, rdx
	mov	r15, r8
	mov	rdi, r9
	mov	r13, QWORD PTR 144[rsp]
	mov	rbp, QWORD PTR [r8]
	mov	rsi, rdx
	mov	ebx, 0
	jmp	.L178
.L179:
	add	rbx, 1
.L178:
	cmp	rbx, rbp
	je	.L182
	mov	rdx, rsi
	mov	rcx, r12
	call	r13
	add	rsi, rdi
	test	eax, eax
	jne	.L179
	imul	rbx, rdi
	lea	rax, [r14+rbx]
	jmp	.L180
.L182:
	lea	rax, 1[rbp]
	mov	QWORD PTR [r15], rax
	imul	rbp, rdi
	lea	rcx, [r14+rbp]
	mov	r8, rdi
	mov	rdx, r12
	call	memcpy
.L180:
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
	mov	rbp, rcx
	mov	r13, rdx
	mov	rdi, r9
	mov	r14, QWORD PTR 128[rsp]
	mov	r12, QWORD PTR [r8]
	mov	rsi, rdx
	mov	ebx, 0
	jmp	.L184
.L185:
	add	rbx, 1
.L184:
	cmp	rbx, r12
	je	.L188
	mov	rdx, rsi
	mov	rcx, rbp
	call	r14
	add	rsi, rdi
	test	eax, eax
	jne	.L185
	imul	rbx, rdi
	lea	rax, 0[r13+rbx]
	jmp	.L186
.L188:
	mov	eax, 0
.L186:
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
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	jmp	.L191
.L192:
	add	rbx, 1
.L191:
	movsx	ecx, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L192
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L198
	mov	ecx, 0
	cmp	eax, 45
	jne	.L194
	mov	ecx, 1
.L193:
	add	rbx, 1
.L194:
	mov	edx, 0
	jmp	.L195
.L198:
	mov	ecx, 0
	jmp	.L193
	.p2align 5
.L196:
	lea	edx, [rdx+rdx*4]
	add	edx, edx
	add	rbx, 1
	movsx	eax, BYTE PTR -1[rbx]
	sub	eax, 48
	sub	edx, eax
.L195:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L196
	mov	eax, edx
	neg	eax
	test	ecx, ecx
	cmovne	eax, edx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	jmp	.L202
.L203:
	add	rbx, 1
.L202:
	movsx	ecx, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L203
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L209
	mov	ecx, 0
	cmp	eax, 45
	jne	.L205
	mov	ecx, 1
.L204:
	add	rbx, 1
.L205:
	mov	edx, 0
	jmp	.L206
.L209:
	mov	ecx, 0
	jmp	.L204
	.p2align 5
.L207:
	lea	edx, [rdx+rdx*4]
	add	edx, edx
	add	rbx, 1
	movsx	eax, BYTE PTR -1[rbx]
	sub	eax, 48
	sub	edx, eax
.L206:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L207
	mov	eax, edx
	neg	eax
	test	ecx, ecx
	cmovne	eax, edx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	rbx, rcx
	jmp	.L213
.L214:
	add	rbx, 1
.L213:
	movsx	ecx, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L214
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L220
	mov	ecx, 0
	cmp	eax, 45
	jne	.L216
	mov	ecx, 1
.L215:
	add	rbx, 1
.L216:
	mov	edx, 0
	jmp	.L217
.L220:
	mov	ecx, 0
	jmp	.L215
	.p2align 6
.L218:
	lea	rdx, [rdx+rdx*4]
	add	rdx, rdx
	add	rbx, 1
	movsx	eax, BYTE PTR -1[rbx]
	sub	eax, 48
	cdqe
	sub	rdx, rax
.L217:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L218
	mov	rax, rdx
	neg	rax
	test	ecx, ecx
	cmovne	rax, rdx
	add	rsp, 32
	pop	rbx
	ret
	.seh_endproc
	.globl	bsearch
	.def	bsearch;	.scl	2;	.type	32;	.endef
	.seh_proc	bsearch
bsearch:
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
	mov	rbp, rdx
	mov	rsi, r8
	mov	rdi, r9
	mov	r13, QWORD PTR 128[rsp]
	jmp	.L224
.L231:
	shr	rsi
.L224:
	test	rsi, rsi
	je	.L230
	mov	rbx, rsi
	shr	rbx
	imul	rbx, rdi
	add	rbx, rbp
	mov	rdx, rbx
	mov	rcx, r12
	call	r13
	test	eax, eax
	js	.L231
	jle	.L229
	lea	rbp, [rbx+rdi]
	mov	rax, rsi
	shr	rax
	sub	rsi, 1
	sub	rsi, rax
	jmp	.L224
.L230:
	mov	eax, 0
.L227:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
.L229:
	mov	rax, rbx
	jmp	.L227
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
	mov	rbp, r9
	mov	r14, QWORD PTR 128[rsp]
	mov	r13, QWORD PTR 136[rsp]
	mov	esi, r8d
	mov	rdi, rdx
	jmp	.L233
.L235:
	sar	esi
.L233:
	test	esi, esi
	je	.L238
	mov	ebx, esi
	sar	ebx
	movsx	rbx, ebx
	imul	rbx, rbp
	add	rbx, rdi
	mov	r8, r13
	mov	rdx, rbx
	mov	rcx, r12
	call	r14
	test	eax, eax
	je	.L237
	jle	.L235
	lea	rdi, [rbx+rbp]
	sub	esi, 1
	jmp	.L235
.L238:
	mov	eax, 0
.L234:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
.L237:
	mov	rax, rbx
	jmp	.L234
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
	jmp	.L247
	.p2align 4
.L249:
	add	rcx, 2
.L247:
	cmp	WORD PTR [rcx], 0
	je	.L248
	cmp	dx, WORD PTR [rcx]
	jne	.L249
.L248:
	cmp	WORD PTR [rcx], 0
	mov	eax, 0
	cmovne	rax, rcx
	ret
	.seh_endproc
	.globl	wcscmp
	.def	wcscmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscmp
wcscmp:
	.seh_endprologue
	jmp	.L253
.L255:
	add	rcx, 2
	add	rdx, 2
.L253:
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L254
	cmp	WORD PTR [rcx], 0
	je	.L254
	test	ax, ax
	jne	.L255
.L254:
	mov	eax, -1
	movzx	r8d, WORD PTR [rdx]
	cmp	WORD PTR [rcx], r8w
	jb	.L256
	movzx	eax, WORD PTR [rcx]
	cmp	r8w, ax
	setb	al
	movzx	eax, al
.L256:
	ret
	.seh_endproc
	.globl	wcscpy
	.def	wcscpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscpy
wcscpy:
	.seh_endprologue
	mov	rax, rcx
	mov	r8, rcx
	.p2align 5
.L259:
	add	rdx, 2
	add	r8, 2
	movzx	r9d, WORD PTR -2[rdx]
	mov	WORD PTR -2[r8], r9w
	test	r9w, r9w
	jne	.L259
	ret
	.seh_endproc
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L262
	.p2align 4
.L263:
	add	rax, 2
.L262:
	cmp	WORD PTR [rax], 0
	jne	.L263
	sub	rax, rcx
	sar	rax
	ret
	.seh_endproc
	.globl	wcsncmp
	.def	wcsncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcsncmp
wcsncmp:
	.seh_endprologue
.L265:
	test	r8, r8
	je	.L266
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L266
	cmp	WORD PTR [rcx], 0
	je	.L266
	test	ax, ax
	je	.L266
	sub	r8, 1
	add	rcx, 2
	add	rdx, 2
	jmp	.L265
.L266:
	mov	eax, 0
	test	r8, r8
	je	.L268
	mov	eax, -1
	movzx	r9d, WORD PTR [rdx]
	cmp	WORD PTR [rcx], r9w
	jb	.L268
	movzx	eax, WORD PTR [rcx]
	cmp	r9w, ax
	setb	al
	movzx	eax, al
.L268:
	ret
	.seh_endproc
	.globl	wmemchr
	.def	wmemchr;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemchr
wmemchr:
	.seh_endprologue
	jmp	.L272
	.p2align 5
.L274:
	sub	r8, 1
	add	rcx, 2
.L272:
	test	r8, r8
	je	.L273
	cmp	dx, WORD PTR [rcx]
	jne	.L274
.L273:
	test	r8, r8
	mov	eax, 0
	cmovne	rax, rcx
	ret
	.seh_endproc
	.globl	wmemcmp
	.def	wmemcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcmp
wmemcmp:
	.seh_endprologue
	jmp	.L278
	.p2align 5
.L280:
	sub	r8, 1
	add	rcx, 2
	add	rdx, 2
.L278:
	test	r8, r8
	je	.L279
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	je	.L280
.L279:
	mov	eax, 0
	test	r8, r8
	je	.L281
	mov	eax, -1
	movzx	r9d, WORD PTR [rdx]
	cmp	WORD PTR [rcx], r9w
	jb	.L281
	movzx	eax, WORD PTR [rcx]
	cmp	r9w, ax
	setb	al
	movzx	eax, al
.L281:
	ret
	.seh_endproc
	.globl	wmemcpy
	.def	wmemcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcpy
wmemcpy:
	.seh_endprologue
	mov	rax, rcx
	mov	r9d, 0
	jmp	.L285
	.p2align 5
.L286:
	movzx	r10d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], r10w
	add	r9, 1
.L285:
	cmp	r9, r8
	jne	.L286
	ret
	.seh_endproc
	.globl	wmemmove
	.def	wmemmove;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemmove
wmemmove:
	.seh_endprologue
	mov	rax, rcx
	cmp	rcx, rdx
	je	.L288
	mov	r9, rcx
	sub	r9, rdx
	lea	rcx, [r8+r8]
	cmp	r9, rcx
	jb	.L289
	mov	r9d, 0
	jmp	.L290
	.p2align 5
.L291:
	movzx	ecx, WORD PTR [rdx+r8*2]
	mov	WORD PTR [rax+r8*2], cx
.L289:
	sub	r8, 1
	cmp	r8, -1
	jne	.L291
.L288:
	ret
	.p2align 5
.L292:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	add	r9, 1
.L290:
	cmp	r9, r8
	jne	.L292
	jmp	.L288
	.seh_endproc
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	.seh_endprologue
	mov	rax, rcx
	mov	r9d, 0
	jmp	.L295
	.p2align 4
.L296:
	mov	WORD PTR [rax+r9*2], dx
	add	r9, 1
.L295:
	cmp	r9, r8
	jne	.L296
	ret
	.seh_endproc
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	.seh_endprologue
	cmp	rcx, rdx
	jb	.L298
	mov	eax, 0
	jne	.L302
	jmp	.L297
	.p2align 5
.L300:
	movzx	eax, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[rdx+r8], al
	sub	r8, 1
.L298:
	test	r8, r8
	jne	.L300
.L297:
	ret
	.p2align 5
.L303:
	movzx	r9d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx+rax], r9b
	add	rax, 1
.L302:
	cmp	rax, r8
	jne	.L303
	jmp	.L297
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
.L322:
	cmp	eax, 32
	je	.L326
	bt	ecx, eax
	jc	.L327
	add	eax, 1
	jmp	.L322
.L327:
	add	eax, 1
.L324:
	ret
.L326:
	mov	eax, 0
	jmp	.L324
	.seh_endproc
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	.seh_endprologue
	mov	eax, 0
	test	ecx, ecx
	je	.L329
	mov	eax, 1
	jmp	.L330
	.p2align 4
.L331:
	sar	ecx
	add	eax, 1
.L330:
	test	cl, 1
	je	.L331
.L329:
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
	ja	.L334
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
	movzx	eax, al
.L334:
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
	ja	.L337
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
	movzx	eax, al
.L337:
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
	ja	.L342
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	.L340
.L342:
	fstp	st(0)
.L340:
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
	jp	.L345
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm0, xmm1
	jp	.L351
	jne	.L351
.L345:
	ret
.L351:
	movss	xmm1, DWORD PTR .LC9[rip]
	test	edx, edx
	jns	.L349
	movss	xmm1, DWORD PTR .LC10[rip]
	jmp	.L349
	.p2align 5
.L348:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L345
	mulss	xmm1, xmm1
.L349:
	test	dl, 1
	je	.L348
	mulss	xmm0, xmm1
	jmp	.L348
	.seh_endproc
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L353
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm0, xmm1
	jp	.L359
	jne	.L359
.L353:
	ret
.L359:
	movsd	xmm1, QWORD PTR .LC11[rip]
	test	edx, edx
	jns	.L357
	movsd	xmm1, QWORD PTR .LC12[rip]
	jmp	.L357
	.p2align 5
.L356:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L353
	mulsd	xmm1, xmm1
.L357:
	test	dl, 1
	je	.L356
	mulsd	xmm0, xmm1
	jmp	.L356
	.seh_endproc
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	.seh_endprologue
	mov	rax, rcx
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L361
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	.L367
	jne	.L367
	jmp	.L361
.L369:
	fstp	st(0)
.L361:
	fstp	TBYTE PTR [rax]
	ret
.L367:
	test	r8d, r8d
	js	.L368
	fld	DWORD PTR .LC9[rip]
	jmp	.L365
.L368:
	fld	DWORD PTR .LC10[rip]
	jmp	.L365
	.p2align 5
.L364:
	mov	edx, r8d
	shr	edx, 31
	add	edx, r8d
	sar	edx
	mov	r8d, edx
	je	.L369
	fmul	st, st(0)
.L365:
	test	r8b, 1
	je	.L364
	fmul	st(1), st
	jmp	.L364
	.seh_endproc
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	.seh_endprologue
	mov	rax, rcx
	add	r8, rcx
	mov	r9, rcx
	jmp	.L371
	.p2align 5
.L372:
	add	rdx, 1
	add	r9, 1
	movzx	r10d, BYTE PTR -1[r9]
	xor	r10b, BYTE PTR -1[rdx]
	mov	BYTE PTR -1[r9], r10b
.L371:
	cmp	r9, r8
	jne	.L372
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
	jmp	.L374
	.p2align 5
.L376:
	add	rsi, 1
	add	rax, 1
	sub	rbx, 1
.L374:
	test	rbx, rbx
	je	.L375
	movzx	edx, BYTE PTR [rsi]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	jne	.L376
.L375:
	test	rbx, rbx
	jne	.L377
	mov	BYTE PTR [rax], 0
.L377:
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
.L379:
	cmp	rax, rdx
	je	.L380
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L381
.L380:
	ret
.L381:
	add	rax, 1
	jmp	.L379
	.seh_endproc
	.globl	strpbrk
	.def	strpbrk;	.scl	2;	.type	32;	.endef
	.seh_proc	strpbrk
strpbrk:
	.seh_endprologue
.L383:
	cmp	BYTE PTR [rcx], 0
	je	.L389
	mov	r8, rdx
	.p2align 5
.L386:
	cmp	BYTE PTR [r8], 0
	je	.L390
	add	r8, 1
	movzx	eax, BYTE PTR [rcx]
	cmp	BYTE PTR -1[r8], al
	jne	.L386
	mov	rax, rcx
.L384:
	ret
.L390:
	add	rcx, 1
	jmp	.L383
.L389:
	mov	eax, 0
	jmp	.L384
	.seh_endproc
	.globl	strrchr
	.def	strrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strrchr
strrchr:
	.seh_endprologue
	mov	eax, 0
	.p2align 5
.L393:
	movsx	r8d, BYTE PTR [rcx]
	cmp	edx, r8d
	cmove	rax, rcx
	add	rcx, 1
	cmp	BYTE PTR -1[rcx], 0
	jne	.L393
	ret
	.seh_endproc
	.globl	strstr
	.def	strstr;	.scl	2;	.type	32;	.endef
	.seh_proc	strstr
strstr:
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
	mov	rbx, rcx
	mov	rsi, rdx
	mov	rcx, rdx
	call	strlen
	mov	rdi, rax
	mov	rax, rbx
	test	rdi, rdi
	je	.L397
	movsx	ebp, BYTE PTR [rsi]
.L398:
	mov	edx, ebp
	mov	rcx, rbx
	call	strchr
	mov	rbx, rax
	test	rax, rax
	je	.L402
	mov	r8, rdi
	mov	rdx, rsi
	mov	rcx, rbx
	call	strncmp
	test	eax, eax
	je	.L401
	add	rbx, 1
	jmp	.L398
.L402:
	mov	eax, 0
.L397:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
.L401:
	mov	rax, rbx
	jmp	.L397
	.seh_endproc
	.globl	copysign
	.def	copysign;	.scl	2;	.type	32;	.endef
	.seh_proc	copysign
copysign:
	.seh_endprologue
	pxor	xmm2, xmm2
	comisd	xmm2, xmm0
	ja	.L416
.L404:
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L407
	comisd	xmm2, xmm1
	ja	.L406
.L407:
	ret
.L416:
	comisd	xmm1, xmm2
	jbe	.L404
.L406:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	jmp	.L407
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
	mov	rsi, r8
	mov	rdi, rdx
	sub	rdi, r9
	add	rdi, rcx
	mov	rax, rcx
	test	r9, r9
	je	.L418
	cmp	rdx, r9
	jb	.L423
	lea	rbp, -1[r9]
	lea	r12, 1[r8]
	jmp	.L419
	.p2align 4
.L420:
	add	rbx, 1
.L419:
	cmp	rdi, rbx
	jb	.L425
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rbx], al
	jne	.L420
	lea	rcx, 1[rbx]
	mov	r8, rbp
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.L420
	mov	rax, rbx
	jmp	.L418
.L425:
	mov	eax, 0
.L418:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
.L423:
	mov	eax, 0
	jmp	.L418
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
	ja	.L444
.L428:
	mov	eax, 0
	comisd	xmm0, QWORD PTR .LC14[rip]
	jb	.L443
	movsd	xmm1, QWORD PTR .LC14[rip]
	movsd	xmm2, QWORD PTR .LC12[rip]
	jmp	.L430
.L444:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	mov	ecx, 1
	jmp	.L428
	.p2align 4
.L432:
	add	eax, 1
	mulsd	xmm0, xmm2
.L430:
	comisd	xmm0, xmm1
	jnb	.L432
.L433:
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L436
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L436:
	ret
.L443:
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	setp	al
	mov	r8d, 1
	cmovne	eax, r8d
	movsd	xmm1, QWORD PTR .LC12[rip]
	comisd	xmm1, xmm0
	seta	r8b
	test	r8b, al
	jne	.L439
	mov	eax, 0
	jmp	.L433
	.p2align 4
.L435:
	sub	eax, 1
	addsd	xmm0, xmm0
.L434:
	comisd	xmm1, xmm0
	ja	.L435
	jmp	.L433
.L439:
	mov	eax, 0
	movsd	xmm1, QWORD PTR .LC12[rip]
	jmp	.L434
	.seh_endproc
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	mov	r8d, 0
	jmp	.L446
	.p2align 5
.L447:
	mov	rax, rcx
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rdx, rdx
	shr	rcx
	lea	r8, [r8+rax]
.L446:
	test	rcx, rcx
	jne	.L447
	mov	rax, r8
	ret
	.seh_endproc
	.globl	udivmodsi4
	.def	udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	udivmodsi4
udivmodsi4:
	.seh_endprologue
	mov	r9d, 1
	jmp	.L449
	.p2align 5
.L452:
	add	edx, edx
	add	r9d, r9d
.L449:
	cmp	edx, ecx
	setb	r10b
	test	r9d, r9d
	setne	al
	test	r10b, al
	je	.L458
	test	edx, edx
	jns	.L452
	mov	eax, 0
	jmp	.L451
.L458:
	mov	eax, 0
	jmp	.L451
	.p2align 4
.L454:
	shr	r9d
	shr	edx
.L451:
	test	r9d, r9d
	je	.L459
	cmp	ecx, edx
	jb	.L454
	sub	ecx, edx
	or	eax, r9d
	jmp	.L454
.L459:
	test	r8, r8
	cmovne	eax, ecx
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
	je	.L461
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	edx, -1[rax]
.L461:
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
	je	.L464
	bsr	rax, rax
	xor	rax, 63
	lea	edx, -1[rax]
.L464:
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__mulsi3
	.def	__mulsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3
__mulsi3:
	.seh_endprologue
	mov	r8d, 0
	jmp	.L467
	.p2align 5
.L468:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	shr	ecx
	add	edx, edx
	lea	r8d, [rax+r8]
.L467:
	test	ecx, ecx
	jne	.L468
	mov	eax, r8d
	ret
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
	jnb	.L470
.L472:
	lea	r11d, 0[0+r10*8]
	mov	edx, 0
	jmp	.L471
.L470:
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jb	.L472
	jmp	.L473
	.p2align 5
.L474:
	mov	r10, QWORD PTR [r9+rdx]
	mov	QWORD PTR [rcx+rdx], r10
	add	rdx, 8
.L471:
	cmp	rdx, r11
	jne	.L474
	mov	eax, eax
	jmp	.L475
	.p2align 5
.L476:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
.L475:
	cmp	eax, r8d
	jb	.L476
.L469:
	ret
	.p2align 5
.L478:
	mov	eax, r8d
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
.L473:
	sub	r8d, 1
	cmp	r8d, -1
	jne	.L478
	jmp	.L469
	.seh_endproc
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	.seh_endprologue
	mov	r9d, r8d
	shr	r9d
	cmp	rcx, rdx
	jnb	.L480
.L482:
	lea	r10d, [r9+r9]
	mov	eax, 0
	jmp	.L481
.L480:
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jb	.L482
	jmp	.L483
	.p2align 5
.L484:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
.L481:
	cmp	rax, r10
	jne	.L484
	test	r8b, 1
	je	.L479
	lea	eax, -1[r8]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], dl
.L479:
	ret
	.p2align 5
.L486:
	mov	eax, r8d
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
.L483:
	sub	r8d, 1
	cmp	r8d, -1
	jne	.L486
	jmp	.L479
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
	jnb	.L488
.L490:
	lea	r11d, 0[0+r10*4]
	mov	edx, 0
	jmp	.L489
.L488:
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jb	.L490
	jmp	.L491
	.p2align 5
.L492:
	mov	r10d, DWORD PTR [r9+rdx]
	mov	DWORD PTR [rcx+rdx], r10d
	add	rdx, 4
.L489:
	cmp	rdx, r11
	jne	.L492
	mov	eax, eax
	jmp	.L493
	.p2align 5
.L494:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
.L493:
	cmp	eax, r8d
	jb	.L494
.L487:
	ret
	.p2align 5
.L496:
	mov	eax, r8d
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
.L491:
	sub	r8d, 1
	cmp	r8d, -1
	jne	.L496
	jmp	.L487
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
	js	.L505
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
.L506:
	ret
.L505:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	addsd	xmm0, xmm0
	jmp	.L506
	.seh_endproc
	.globl	__ulltof
	.def	__ulltof;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltof
__ulltof:
	.seh_endprologue
	test	rcx, rcx
	js	.L508
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
.L509:
	ret
.L508:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
	jmp	.L509
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
.L512:
	cmp	eax, 16
	je	.L513
	mov	edx, r8d
	sub	edx, eax
	bt	ecx, edx
	jc	.L513
	add	eax, 1
	jmp	.L512
.L513:
	ret
	.seh_endproc
	.globl	__ctzhi2
	.def	__ctzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzhi2
__ctzhi2:
	.seh_endprologue
	mov	eax, 0
	movzx	ecx, cx
.L516:
	cmp	eax, 16
	je	.L517
	bt	ecx, eax
	jc	.L517
	add	eax, 1
	jmp	.L516
.L517:
	ret
	.seh_endproc
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC15[rip]
	jnb	.L525
	cvttss2si	eax, xmm0
.L522:
	ret
.L525:
	subss	xmm0, DWORD PTR .LC15[rip]
	cvttss2si	eax, xmm0
	add	eax, 32768
	jmp	.L522
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
	jmp	.L527
	.p2align 5
.L528:
	mov	edx, r8d
	sar	edx, cl
	and	edx, 1
	add	ecx, 1
	lea	eax, [rdx+rax]
.L527:
	cmp	ecx, 16
	jne	.L528
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
	jmp	.L530
	.p2align 5
.L531:
	mov	eax, r8d
	sar	eax, cl
	and	eax, 1
	add	ecx, 1
	lea	edx, [rax+rdx]
.L530:
	cmp	ecx, 16
	jne	.L531
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__mulsi3_iq2000
	.def	__mulsi3_iq2000;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_iq2000
__mulsi3_iq2000:
	.seh_endprologue
	mov	r8d, 0
	jmp	.L533
	.p2align 5
.L534:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	shr	ecx
	add	edx, edx
	lea	r8d, [rax+r8]
.L533:
	test	ecx, ecx
	jne	.L534
	mov	eax, r8d
	ret
	.seh_endproc
	.globl	__mulsi3_lm32
	.def	__mulsi3_lm32;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_lm32
__mulsi3_lm32:
	.seh_endprologue
	mov	eax, 0
	test	ecx, ecx
	jne	.L537
	jmp	.L536
	.p2align 5
.L538:
	mov	r8d, edx
	and	r8d, 1
	neg	r8d
	and	r8d, ecx
	add	ecx, ecx
	shr	edx
	lea	eax, [r8+rax]
.L537:
	test	edx, edx
	jne	.L538
.L536:
	ret
	.seh_endproc
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	.seh_endprologue
	mov	r9d, 1
	jmp	.L541
	.p2align 5
.L544:
	add	edx, edx
	add	r9d, r9d
.L541:
	cmp	edx, ecx
	setb	r10b
	test	r9d, r9d
	setne	al
	test	r10b, al
	je	.L550
	test	edx, edx
	jns	.L544
	mov	eax, 0
	jmp	.L543
.L550:
	mov	eax, 0
	jmp	.L543
	.p2align 4
.L546:
	shr	r9d
	shr	edx
.L543:
	test	r9d, r9d
	je	.L551
	cmp	ecx, edx
	jb	.L546
	sub	ecx, edx
	or	eax, r9d
	jmp	.L546
.L551:
	test	r8d, r8d
	cmovne	eax, ecx
	ret
	.seh_endproc
	.globl	__mspabi_cmpf
	.def	__mspabi_cmpf;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpf
__mspabi_cmpf:
	.seh_endprologue
	mov	eax, -1
	comiss	xmm1, xmm0
	ja	.L553
	comiss	xmm0, xmm1
	seta	al
	movzx	eax, al
.L553:
	ret
	.seh_endproc
	.globl	__mspabi_cmpd
	.def	__mspabi_cmpd;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpd
__mspabi_cmpd:
	.seh_endprologue
	mov	eax, -1
	comisd	xmm1, xmm0
	ja	.L556
	comisd	xmm0, xmm1
	seta	al
	movzx	eax, al
.L556:
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
	mov	r11d, 0
	test	edx, edx
	js	.L567
.L561:
	mov	r9d, 0
	mov	r8d, 0
	jmp	.L562
.L567:
	neg	edx
	mov	r11d, 1
	jmp	.L561
	.p2align 6
.L563:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	sar	edx
	add	r8d, 1
	lea	r9d, [r9+rax]
.L562:
	test	edx, edx
	setne	al
	cmp	r8b, 31
	setbe	r10b
	test	r10b, al
	jne	.L563
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmove	eax, r9d
	ret
	.seh_endproc
	.globl	__divsi3
	.def	__divsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__divsi3
__divsi3:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	ebx, 0
	test	ecx, ecx
	js	.L573
.L569:
	test	edx, edx
	js	.L574
.L570:
	mov	r8d, 0
	call	__udivmodsi4
	mov	edx, eax
	neg	edx
	test	ebx, ebx
	cmovne	eax, edx
	add	rsp, 32
	pop	rbx
	ret
.L573:
	neg	ecx
	mov	ebx, 1
	jmp	.L569
.L574:
	neg	edx
	xor	ebx, 1
	jmp	.L570
	.seh_endproc
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	push	rbx
	.seh_pushreg	rbx
	sub	rsp, 32
	.seh_stackalloc	32
	.seh_endprologue
	mov	ebx, 0
	test	ecx, ecx
	js	.L579
.L576:
	mov	eax, edx
	neg	eax
	cmovns	edx, eax
	mov	r8d, 1
	call	__udivmodsi4
	mov	edx, eax
	neg	edx
	test	ebx, ebx
	cmovne	eax, edx
	add	rsp, 32
	pop	rbx
	ret
.L579:
	neg	ecx
	mov	ebx, 1
	jmp	.L576
	.seh_endproc
	.globl	__udivmodhi4
	.def	__udivmodhi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodhi4
__udivmodhi4:
	.seh_endprologue
	mov	r9d, 1
	jmp	.L581
	.p2align 5
.L584:
	add	edx, edx
	add	r9d, r9d
.L581:
	cmp	dx, cx
	setb	r10b
	test	r9w, r9w
	setne	al
	test	r10b, al
	je	.L590
	test	dx, dx
	jns	.L584
	mov	eax, 0
	jmp	.L583
.L590:
	mov	eax, 0
	jmp	.L583
	.p2align 5
.L586:
	shr	r9w
	shr	dx
.L583:
	test	r9w, r9w
	je	.L591
	cmp	cx, dx
	jb	.L586
	sub	ecx, edx
	or	eax, r9d
	jmp	.L586
.L591:
	test	r8d, r8d
	cmovne	eax, ecx
	ret
	.seh_endproc
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	.seh_endprologue
	mov	r9d, 1
	jmp	.L593
	.p2align 5
.L596:
	add	edx, edx
	add	r9d, r9d
.L593:
	cmp	edx, ecx
	setb	r10b
	test	r9d, r9d
	setne	al
	test	r10b, al
	je	.L602
	test	edx, edx
	jns	.L596
	mov	eax, 0
	jmp	.L595
.L602:
	mov	eax, 0
	jmp	.L595
	.p2align 4
.L598:
	shr	r9d
	shr	edx
.L595:
	test	r9d, r9d
	je	.L603
	cmp	ecx, edx
	jb	.L598
	sub	ecx, edx
	or	eax, r9d
	jmp	.L598
.L603:
	test	r8d, r8d
	cmovne	eax, ecx
	ret
	.seh_endproc
	.globl	__ashldi3
	.def	__ashldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashldi3
__ashldi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L605
	lea	ecx, -32[rdx]
	sal	r8d, cl
	mov	rax, r8
	sal	rax, 32
.L607:
	ret
.L605:
	mov	rax, rcx
	test	edx, edx
	je	.L607
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
	jmp	.L607
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
	je	.L610
	mov	r10d, 0
	lea	ecx, -64[rdx]
	sal	r8, cl
	mov	r11, r8
.L611:
	mov	rcx, r10
	mov	rax, r11
.L612:
	mov	QWORD PTR [rsp], rcx
	mov	rdx, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rax
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
.L610:
	test	edx, edx
	je	.L612
	mov	r10, rcx
	mov	ecx, edx
	sal	r10, cl
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	r8, cl
	or	r8, r9
	mov	r11, r8
	jmp	.L611
	.seh_endproc
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L615
	sar	r8, 32
	mov	eax, r8d
	sar	eax, 31
	lea	ecx, -32[rdx]
	sar	r8d, cl
	sal	rax, 32
	or	rax, r8
.L617:
	ret
.L615:
	mov	rax, rcx
	test	edx, edx
	je	.L617
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
	jmp	.L617
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
	je	.L620
	sar	rcx, 63
	mov	r12, rcx
	lea	ecx, -64[rdx]
	sar	rax, cl
	mov	r11, rax
.L621:
	mov	r8, r11
	mov	rcx, r12
.L622:
	mov	QWORD PTR [rsp], r8
	mov	rax, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 16
	pop	r12
	ret
.L620:
	test	edx, edx
	je	.L622
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
	jmp	.L621
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
	setbe	al
	movzx	eax, al
	sal	eax, 4
	mov	ecx, 16
	sub	ecx, eax
	shr	edx, cl
	test	dh, -1
	sete	r8b
	movzx	r8d, r8b
	sal	r8d, 3
	mov	ecx, 8
	sub	ecx, r8d
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
	jl	.L629
	mov	r9, rcx
	sar	r9, 32
	mov	r8, rdx
	sar	r8, 32
	mov	eax, 2
	cmp	r9d, r8d
	jg	.L629
	mov	eax, 0
	cmp	ecx, edx
	jb	.L629
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L629:
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
	jl	.L636
	mov	ecx, 2
	jg	.L636
	mov	ecx, 0
	cmp	r8, r9
	jb	.L636
	cmp	r9, r8
	setb	cl
	movzx	ecx, cl
	add	ecx, 1
.L636:
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
	jne	.L644
	xor	eax, eax
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	mov	edx, 0
	cmove	eax, edx
.L645:
	ret
.L644:
	rep bsf	rax, rax
	add	eax, 1
	jmp	.L645
	.seh_endproc
	.globl	__lshrdi3
	.def	__lshrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrdi3
__lshrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L648
	shr	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	shr	eax, cl
.L650:
	ret
.L648:
	mov	rax, rcx
	test	edx, edx
	je	.L650
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
	jmp	.L650
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
	je	.L653
	lea	ecx, -64[rdx]
	shr	r8, cl
	mov	r10, r8
	mov	r11d, 0
.L654:
	mov	rcx, r10
	mov	rax, r11
.L655:
	mov	QWORD PTR [rsp], rcx
	mov	rdx, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rax
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
.L653:
	test	edx, edx
	je	.L655
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
	jmp	.L654
	.seh_endproc
	.globl	__muldsi3
	.def	__muldsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldsi3
__muldsi3:
	.seh_endprologue
	movzx	r10d, cx
	movzx	eax, dx
	mov	r9d, r10d
	imul	r9d, eax
	mov	r8d, r9d
	shr	r8d, 16
	shr	ecx, 16
	imul	eax, ecx
	add	r8d, eax
	mov	eax, r8d
	shr	eax, 16
	movzx	r8d, r8w
	movzx	r9d, r9w
	shr	edx, 16
	imul	r10d, edx
	add	r8d, r10d
	mov	r10d, r8d
	sal	r10d, 16
	lea	r9d, [r10+r9]
	sal	rax, 32
	or	rax, r9
	mov	r9, rax
	sar	r9, 32
	shr	r8d, 16
	lea	r8d, [r8+r9]
	sal	r8, 32
	mov	eax, eax
	or	rax, r8
	mov	r8, rax
	sar	r8, 32
	imul	ecx, edx
	lea	edx, [rcx+r8]
	sal	rdx, 32
	mov	eax, eax
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
	mov	r9, rdx
	mov	r10d, ecx
	mov	edx, edx
	mov	rax, r10
	imul	rax, rdx
	mov	r8, rax
	shr	r8, 32
	shr	rcx, 32
	imul	rdx, rcx
	add	r8, rdx
	mov	eax, eax
	mov	rdx, r8
	sal	rdx, 32
	add	rax, rdx
	shr	r8, 32
	mov	rdx, r8
	mov	r8, rax
	shr	r8, 32
	mov	r11d, eax
	shr	r9, 32
	imul	r10, r9
	add	r8, r10
	mov	r10, r8
	sal	r10, 32
	add	r10, r11
	shr	r8, 32
	add	r8, rdx
	imul	rcx, r9
	add	rcx, r8
	mov	QWORD PTR [rsp], r10
	mov	QWORD PTR 8[rsp], rcx
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
	shr	rcx, 32
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 16
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 8
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 4
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
	mov	rax, QWORD PTR [rcx]
	mov	rcx, QWORD PTR 8[rcx]
	xor	rcx, rax
	mov	rax, rcx
	sar	rax, 32
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 16
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 8
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 4
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
	mov	eax, ecx
	shr	ecx, 16
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 8
	xor	ecx, eax
	mov	eax, ecx
	shr	eax, 4
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
	mov	rax, rcx
	shr	rax, 2
	movabs	rdx, 3689348814741910323
	and	rax, rdx
	and	rcx, rdx
	add	rcx, rax
	mov	rax, rcx
	shr	rax, 4
	add	rcx, rax
	movabs	rax, 1085102592571150095
	and	rcx, rax
	mov	rdx, rcx
	shr	rdx, 32
	add	edx, ecx
	mov	eax, edx
	shr	eax, 16
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
	mov	eax, ecx
	shr	eax, 2
	and	eax, 858993459
	and	ecx, 858993459
	add	ecx, eax
	mov	eax, ecx
	shr	eax, 4
	add	ecx, eax
	and	ecx, 252645135
	mov	eax, ecx
	shr	eax, 16
	add	ecx, eax
	mov	eax, ecx
	shr	eax, 8
	add	eax, ecx
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
	mov	r10, rax
	mov	r11, rdx
	shrd	r10, r11, 2
	shr	r11, 2
	movabs	r8, 3689348814741910323
	and	r10, r8
	and	r11, r8
	and	rax, r8
	and	rdx, r8
	add	rax, r10
	adc	rdx, r11
	mov	r8, rax
	mov	r9, rdx
	shrd	r8, r9, 4
	shr	r9, 4
	add	r8, rax
	adc	r9, rdx
	movabs	rax, 1085102592571150095
	mov	rdx, rax
	and	rax, r8
	and	rdx, r9
	mov	rcx, rax
	mov	rax, rdx
	add	rax, rcx
	mov	rdx, rax
	shr	rdx, 32
	add	edx, eax
	mov	eax, edx
	shr	eax, 16
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
	jmp	.L672
	.p2align 5
.L670:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L671
	mulsd	xmm0, xmm0
.L672:
	test	dl, 1
	je	.L670
	mulsd	xmm1, xmm0
	jmp	.L670
.L671:
	movapd	xmm0, xmm1
	test	ecx, ecx
	je	.L673
	movsd	xmm0, QWORD PTR .LC14[rip]
	divsd	xmm0, xmm1
.L673:
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
	jmp	.L678
	.p2align 5
.L676:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L677
	mulss	xmm0, xmm0
.L678:
	test	dl, 1
	je	.L676
	mulss	xmm1, xmm0
	jmp	.L676
.L677:
	movaps	xmm0, xmm1
	test	ecx, ecx
	je	.L679
	movss	xmm0, DWORD PTR .LC16[rip]
	divss	xmm0, xmm1
.L679:
	ret
	.seh_endproc
	.globl	__ucmpdi2
	.def	__ucmpdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ucmpdi2
__ucmpdi2:
	.seh_endprologue
	mov	r9, rcx
	shr	r9, 32
	mov	r8, rdx
	shr	r8, 32
	mov	eax, 0
	cmp	r9d, r8d
	jb	.L682
	mov	r8, r9
	mov	r9, rdx
	shr	r9, 32
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L682
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
	jb	.L689
	mov	ecx, 2
	cmp	rdx, rax
	jb	.L689
	mov	ecx, 0
	cmp	r8, r9
	jb	.L689
	cmp	r9, r8
	setb	cl
	movzx	ecx, cl
	add	ecx, 1
.L689:
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
