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
	mov	r9, rcx
	cmp	rdx, rcx
	jb	.L5
	mov	r9d, 0
	cmp	rcx, rdx
	jne	.L8
	jmp	.L7
	.p2align 5
.L6:
	movzx	ecx, BYTE PTR -1[rdx+r8]
	mov	BYTE PTR -1[r9+r8], cl
	sub	r8, 1
.L5:
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
	jmp	.L13
	.p2align 6
.L15:
	sub	r9, 1
	add	rdx, 1
	add	rcx, 1
.L13:
	test	r9, r9
	je	.L14
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], r10b
	movzx	r10d, r10b
	cmp	r8d, r10d
	jne	.L15
.L14:
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
	jmp	.L19
	.p2align 5
.L21:
	add	rcx, 1
	sub	r8, 1
.L19:
	test	r8, r8
	je	.L20
	movzx	eax, BYTE PTR [rcx]
	cmp	edx, eax
	jne	.L21
.L20:
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
	jmp	.L25
	.p2align 5
.L27:
	sub	r8, 1
	add	rcx, 1
	add	rdx, 1
.L25:
	test	r8, r8
	je	.L26
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	je	.L27
.L26:
	mov	eax, 0
	test	r8, r8
	je	.L28
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
.L28:
	ret
	.seh_endproc
	.globl	memcpy
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memcpy
memcpy:
	.seh_endprologue
	mov	rax, rcx
	mov	r9d, 0
	jmp	.L31
	.p2align 5
.L32:
	movzx	r10d, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rax+r9], r10b
	add	r9, 1
.L31:
	cmp	r9, r8
	jne	.L32
	ret
	.seh_endproc
	.globl	memrchr
	.def	memrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	memrchr
memrchr:
	.seh_endprologue
	movzx	edx, dl
	sub	r8, 1
.L34:
	cmp	r8, -1
	je	.L38
	movzx	r9d, BYTE PTR [rcx+r8]
	lea	r10, -1[r8]
	cmp	edx, r9d
	je	.L39
	mov	r8, r10
	jmp	.L34
.L39:
	lea	rax, [rcx+r8]
	jmp	.L35
.L38:
	mov	eax, 0
.L35:
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
	jmp	.L41
	.p2align 4
.L42:
	mov	BYTE PTR [r9], dl
	add	r9, 1
.L41:
	cmp	r9, r8
	jne	.L42
	ret
	.seh_endproc
	.globl	stpcpy
	.def	stpcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	stpcpy
stpcpy:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L44
	.p2align 5
.L45:
	add	rdx, 1
	add	rax, 1
.L44:
	movzx	ecx, BYTE PTR [rdx]
	mov	BYTE PTR [rax], cl
	test	cl, cl
	jne	.L45
	ret
	.seh_endproc
	.globl	strchrnul
	.def	strchrnul;	.scl	2;	.type	32;	.endef
	.seh_proc	strchrnul
strchrnul:
	.seh_endprologue
	mov	rax, rcx
	movzx	edx, dl
	jmp	.L47
	.p2align 4
.L49:
	add	rax, 1
.L47:
	cmp	BYTE PTR [rax], 0
	je	.L48
	movzx	ecx, BYTE PTR [rax]
	cmp	edx, ecx
	jne	.L49
.L48:
	ret
	.seh_endproc
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
	.seh_endprologue
	.p2align 5
.L52:
	movsx	eax, BYTE PTR [rcx]
	cmp	edx, eax
	je	.L53
	add	rcx, 1
	cmp	BYTE PTR -1[rcx], 0
	jne	.L52
	mov	eax, 0
	jmp	.L51
.L53:
	mov	rax, rcx
.L51:
	ret
	.seh_endproc
	.globl	strcmp
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strcmp
strcmp:
	.seh_endprologue
	jmp	.L56
	.p2align 5
.L58:
	add	rcx, 1
	add	rdx, 1
.L56:
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	jne	.L57
	cmp	BYTE PTR [rcx], 0
	jne	.L58
.L57:
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
	jmp	.L60
	.p2align 4
.L61:
	add	rax, 1
.L60:
	cmp	BYTE PTR [rax], 0
	jne	.L61
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
	je	.L63
	mov	rax, rcx
	lea	r9, -1[rcx+r8]
.L64:
	cmp	BYTE PTR [rax], 0
	je	.L65
	cmp	rax, r9
	setne	r8b
	cmp	BYTE PTR [rdx], 0
	setne	cl
	test	r8b, cl
	je	.L65
	movzx	ecx, BYTE PTR [rdx]
	cmp	BYTE PTR [rax], cl
	jne	.L65
	add	rax, 1
	add	rdx, 1
	jmp	.L64
.L65:
	movzx	eax, BYTE PTR [rax]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
.L63:
	ret
	.seh_endproc
	.globl	swab
	.def	swab;	.scl	2;	.type	32;	.endef
	.seh_proc	swab
swab:
	.seh_endprologue
	mov	rax, rcx
	add	r8, rcx
	jmp	.L69
	.p2align 6
.L70:
	movzx	r9d, BYTE PTR 1[rax]
	mov	BYTE PTR [rdx], r9b
	movzx	r9d, BYTE PTR [rax]
	mov	BYTE PTR 1[rdx], r9b
	add	rdx, 2
	add	rax, 2
.L69:
	mov	r9, r8
	sub	r9, rax
	cmp	r9, 1
	jg	.L70
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
	jne	.L82
	movzx	edx, cx
	sub	edx, 8232
	cmp	edx, 1
	jbe	.L82
	movzx	ecx, cx
	sub	ecx, 65529
	cmp	ecx, 2
	setbe	al
	movzx	eax, al
.L82:
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
	jbe	.L92
	cmp	cx, 8231
	setbe	dl
	movzx	eax, cx
	sub	eax, 8234
	cmp	eax, 47061
	setbe	r8b
	mov	eax, 1
	or	dl, r8b
	jne	.L88
	movzx	edx, cx
	sub	edx, 57344
	cmp	edx, 8184
	jbe	.L88
	movzx	edx, cx
	sub	edx, 65532
	mov	eax, 0
	cmp	edx, 1048579
	ja	.L88
	not	ecx
	test	ecx, 65534
	setne	al
	movzx	eax, al
	jmp	.L88
.L92:
	lea	eax, 1[rcx]
	and	eax, 127
	cmp	eax, 32
	setg	al
	movzx	eax, al
.L88:
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
	jbe	.L94
	or	ecx, 32
	movzx	ecx, cx
	sub	ecx, 97
	cmp	ecx, 5
	setbe	dl
	movzx	edx, dl
.L94:
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
	jp	.L98
	ucomisd	xmm1, xmm1
	jp	.L101
	comisd	xmm0, xmm1
	jbe	.L104
	subsd	xmm0, xmm1
.L98:
	ret
.L101:
	movapd	xmm0, xmm1
	jmp	.L98
.L104:
	pxor	xmm0, xmm0
	jmp	.L98
	.seh_endproc
	.globl	fdimf
	.def	fdimf;	.scl	2;	.type	32;	.endef
	.seh_proc	fdimf
fdimf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L106
	ucomiss	xmm1, xmm1
	jp	.L109
	comiss	xmm0, xmm1
	jbe	.L112
	subss	xmm0, xmm1
.L106:
	ret
.L109:
	movaps	xmm0, xmm1
	jmp	.L106
.L112:
	pxor	xmm0, xmm0
	jmp	.L106
	.seh_endproc
	.globl	fmax
	.def	fmax;	.scl	2;	.type	32;	.endef
	.seh_proc	fmax
fmax:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L118
	ucomisd	xmm1, xmm1
	jp	.L114
	movmskpd	edx, xmm0
	and	edx, 1
	movmskpd	eax, xmm1
	and	eax, 1
	cmp	edx, eax
	je	.L115
	movmskpd	eax, xmm0
	test	al, 1
	je	.L114
	movapd	xmm0, xmm1
	jmp	.L114
.L115:
	movapd	xmm2, xmm1
	maxsd	xmm2, xmm0
	movapd	xmm0, xmm2
.L114:
	ret
.L118:
	movapd	xmm0, xmm1
	jmp	.L114
	.seh_endproc
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L126
	ucomiss	xmm1, xmm1
	jp	.L122
	movd	edx, xmm0
	and	edx, -2147483648
	movd	eax, xmm1
	and	eax, -2147483648
	cmp	edx, eax
	je	.L123
	movd	eax, xmm0
	test	eax, eax
	jns	.L122
	movaps	xmm0, xmm1
	jmp	.L122
.L123:
	movaps	xmm2, xmm1
	maxss	xmm2, xmm0
	movaps	xmm0, xmm2
.L122:
	ret
.L126:
	movaps	xmm0, xmm1
	jmp	.L122
	.seh_endproc
	.globl	fmaxl
	.def	fmaxl;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxl
fmaxl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L136
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L137
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
	je	.L133
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmovne	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
.L129:
	mov	rax, rcx
	ret
.L136:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L129
.L137:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L129
.L133:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	jmp	.L129
	.seh_endproc
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L139
	ucomisd	xmm1, xmm1
	jp	.L144
	movmskpd	edx, xmm0
	and	edx, 1
	movmskpd	eax, xmm1
	and	eax, 1
	cmp	edx, eax
	je	.L140
	movmskpd	eax, xmm0
	test	al, 1
	je	.L139
	movapd	xmm1, xmm0
	jmp	.L139
.L140:
	movapd	xmm2, xmm0
	minsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L139:
	movapd	xmm0, xmm1
	ret
.L144:
	movapd	xmm1, xmm0
	jmp	.L139
	.seh_endproc
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L147
	ucomiss	xmm1, xmm1
	jp	.L152
	movd	edx, xmm0
	and	edx, -2147483648
	movd	eax, xmm1
	and	eax, -2147483648
	cmp	edx, eax
	je	.L148
	movd	eax, xmm0
	test	eax, eax
	jns	.L147
	movaps	xmm1, xmm0
	jmp	.L147
.L148:
	movaps	xmm2, xmm0
	minss	xmm2, xmm1
	movaps	xmm1, xmm2
.L147:
	movaps	xmm0, xmm1
	ret
.L152:
	movaps	xmm1, xmm0
	jmp	.L147
	.seh_endproc
	.globl	fminl
	.def	fminl;	.scl	2;	.type	32;	.endef
	.seh_proc	fminl
fminl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L161
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L162
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
	je	.L158
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmove	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
.L154:
	mov	rax, rcx
	ret
.L161:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L154
.L162:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L154
.L158:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	jmp	.L154
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
	jmp	.L164
	.p2align 5
.L165:
	mov	edx, ecx
	and	edx, 63
	movzx	edx, BYTE PTR [r8+rdx]
	mov	BYTE PTR [rax], dl
	add	rax, 1
	shr	ecx, 6
.L164:
	test	ecx, ecx
	jne	.L165
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
	je	.L171
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	QWORD PTR [rdx], rcx
	cmp	QWORD PTR [rcx], 0
	je	.L168
	mov	rax, QWORD PTR [rcx]
	mov	QWORD PTR 8[rax], rcx
.L168:
	ret
.L171:
	mov	QWORD PTR 8[rcx], 0
	mov	QWORD PTR [rcx], 0
	jmp	.L168
	.seh_endproc
	.globl	remque
	.def	remque;	.scl	2;	.type	32;	.endef
	.seh_proc	remque
remque:
	.seh_endprologue
	cmp	QWORD PTR [rcx], 0
	je	.L173
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L173:
	cmp	QWORD PTR 8[rcx], 0
	je	.L172
	mov	rax, QWORD PTR 8[rcx]
	mov	rdx, QWORD PTR [rcx]
	mov	QWORD PTR [rax], rdx
.L172:
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
	jmp	.L176
.L177:
	add	rbx, 1
.L176:
	cmp	rbx, rbp
	je	.L180
	mov	rdx, rsi
	mov	rcx, r12
	call	r13
	add	rsi, rdi
	test	eax, eax
	jne	.L177
	imul	rbx, rdi
	lea	rax, [r14+rbx]
	jmp	.L178
.L180:
	lea	rax, 1[rbp]
	mov	QWORD PTR [r15], rax
	imul	rbp, rdi
	lea	rcx, [r14+rbp]
	mov	r8, rdi
	mov	rdx, r12
	call	memcpy
.L178:
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
	jmp	.L182
.L183:
	add	rbx, 1
.L182:
	cmp	rbx, r12
	je	.L186
	mov	rdx, rsi
	mov	rcx, rbp
	call	r14
	add	rsi, rdi
	test	eax, eax
	jne	.L183
	imul	rbx, rdi
	lea	rax, 0[r13+rbx]
	jmp	.L184
.L186:
	mov	eax, 0
.L184:
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
	jmp	.L189
.L190:
	add	rbx, 1
.L189:
	movsx	ecx, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L190
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L196
	mov	ecx, 0
	cmp	eax, 45
	jne	.L192
	mov	ecx, 1
.L191:
	add	rbx, 1
.L192:
	mov	edx, 0
	jmp	.L193
.L196:
	mov	ecx, 0
	jmp	.L191
	.p2align 5
.L194:
	lea	edx, [rdx+rdx*4]
	add	edx, edx
	add	rbx, 1
	movsx	eax, BYTE PTR -1[rbx]
	sub	eax, 48
	sub	edx, eax
.L193:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L194
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
	jmp	.L200
.L201:
	add	rbx, 1
.L200:
	movsx	ecx, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L201
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L207
	mov	ecx, 0
	cmp	eax, 45
	jne	.L203
	mov	ecx, 1
.L202:
	add	rbx, 1
.L203:
	mov	edx, 0
	jmp	.L204
.L207:
	mov	ecx, 0
	jmp	.L202
	.p2align 5
.L205:
	lea	edx, [rdx+rdx*4]
	add	edx, edx
	add	rbx, 1
	movsx	eax, BYTE PTR -1[rbx]
	sub	eax, 48
	sub	edx, eax
.L204:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L205
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
	jmp	.L211
.L212:
	add	rbx, 1
.L211:
	movsx	ecx, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L212
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L218
	mov	ecx, 0
	cmp	eax, 45
	jne	.L214
	mov	ecx, 1
.L213:
	add	rbx, 1
.L214:
	mov	edx, 0
	jmp	.L215
.L218:
	mov	ecx, 0
	jmp	.L213
	.p2align 6
.L216:
	lea	rdx, [rdx+rdx*4]
	add	rdx, rdx
	add	rbx, 1
	movsx	eax, BYTE PTR -1[rbx]
	sub	eax, 48
	cdqe
	sub	rdx, rax
.L215:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L216
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
	jmp	.L222
.L229:
	shr	rsi
.L222:
	test	rsi, rsi
	je	.L228
	mov	rbx, rsi
	shr	rbx
	imul	rbx, rdi
	add	rbx, rbp
	mov	rdx, rbx
	mov	rcx, r12
	call	r13
	test	eax, eax
	js	.L229
	jle	.L227
	lea	rbp, [rbx+rdi]
	mov	rax, rsi
	shr	rax
	sub	rsi, 1
	sub	rsi, rax
	jmp	.L222
.L228:
	mov	eax, 0
.L225:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
.L227:
	mov	rax, rbx
	jmp	.L225
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
	jmp	.L231
.L233:
	sar	esi
.L231:
	test	esi, esi
	je	.L236
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
	je	.L235
	jle	.L233
	lea	rdi, [rbx+rbp]
	sub	esi, 1
	jmp	.L233
.L236:
	mov	eax, 0
.L232:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
.L235:
	mov	rax, rbx
	jmp	.L232
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
	jmp	.L245
	.p2align 4
.L247:
	add	rcx, 2
.L245:
	cmp	WORD PTR [rcx], 0
	je	.L246
	cmp	dx, WORD PTR [rcx]
	jne	.L247
.L246:
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
	jmp	.L251
.L253:
	add	rcx, 2
	add	rdx, 2
.L251:
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L252
	cmp	WORD PTR [rcx], 0
	je	.L252
	test	ax, ax
	jne	.L253
.L252:
	mov	eax, -1
	movzx	r8d, WORD PTR [rdx]
	cmp	WORD PTR [rcx], r8w
	jb	.L254
	movzx	eax, WORD PTR [rcx]
	cmp	r8w, ax
	setb	al
	movzx	eax, al
.L254:
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
.L257:
	add	rdx, 2
	add	r8, 2
	movzx	r9d, WORD PTR -2[rdx]
	mov	WORD PTR -2[r8], r9w
	test	r9w, r9w
	jne	.L257
	ret
	.seh_endproc
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L260
	.p2align 4
.L261:
	add	rax, 2
.L260:
	cmp	WORD PTR [rax], 0
	jne	.L261
	sub	rax, rcx
	sar	rax
	ret
	.seh_endproc
	.globl	wcsncmp
	.def	wcsncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcsncmp
wcsncmp:
	.seh_endprologue
.L263:
	test	r8, r8
	je	.L264
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L264
	cmp	WORD PTR [rcx], 0
	je	.L264
	test	ax, ax
	je	.L264
	sub	r8, 1
	add	rcx, 2
	add	rdx, 2
	jmp	.L263
.L264:
	mov	eax, 0
	test	r8, r8
	je	.L266
	mov	eax, -1
	movzx	r9d, WORD PTR [rdx]
	cmp	WORD PTR [rcx], r9w
	jb	.L266
	movzx	eax, WORD PTR [rcx]
	cmp	r9w, ax
	setb	al
	movzx	eax, al
.L266:
	ret
	.seh_endproc
	.globl	wmemchr
	.def	wmemchr;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemchr
wmemchr:
	.seh_endprologue
	jmp	.L270
	.p2align 5
.L272:
	sub	r8, 1
	add	rcx, 2
.L270:
	test	r8, r8
	je	.L271
	cmp	dx, WORD PTR [rcx]
	jne	.L272
.L271:
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
	jmp	.L276
	.p2align 5
.L278:
	sub	r8, 1
	add	rcx, 2
	add	rdx, 2
.L276:
	test	r8, r8
	je	.L277
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	je	.L278
.L277:
	mov	eax, 0
	test	r8, r8
	je	.L279
	mov	eax, -1
	movzx	r9d, WORD PTR [rdx]
	cmp	WORD PTR [rcx], r9w
	jb	.L279
	movzx	eax, WORD PTR [rcx]
	cmp	r9w, ax
	setb	al
	movzx	eax, al
.L279:
	ret
	.seh_endproc
	.globl	wmemcpy
	.def	wmemcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcpy
wmemcpy:
	.seh_endprologue
	mov	rax, rcx
	mov	r9d, 0
	jmp	.L283
	.p2align 5
.L284:
	movzx	r10d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], r10w
	add	r9, 1
.L283:
	cmp	r9, r8
	jne	.L284
	ret
	.seh_endproc
	.globl	wmemmove
	.def	wmemmove;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemmove
wmemmove:
	.seh_endprologue
	mov	rax, rcx
	cmp	rcx, rdx
	je	.L286
	mov	r9, rcx
	sub	r9, rdx
	lea	rcx, [r8+r8]
	cmp	r9, rcx
	jb	.L287
	mov	r9d, 0
	jmp	.L288
	.p2align 5
.L289:
	movzx	ecx, WORD PTR [rdx+r8*2]
	mov	WORD PTR [rax+r8*2], cx
.L287:
	sub	r8, 1
	cmp	r8, -1
	jne	.L289
.L286:
	ret
	.p2align 5
.L290:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	add	r9, 1
.L288:
	cmp	r9, r8
	jne	.L290
	jmp	.L286
	.seh_endproc
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	.seh_endprologue
	mov	rax, rcx
	mov	r9d, 0
	jmp	.L293
	.p2align 4
.L294:
	mov	WORD PTR [rax+r9*2], dx
	add	r9, 1
.L293:
	cmp	r9, r8
	jne	.L294
	ret
	.seh_endproc
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	.seh_endprologue
	cmp	rcx, rdx
	jb	.L297
	mov	eax, 0
	jne	.L300
	jmp	.L295
	.p2align 5
.L298:
	movzx	eax, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[rdx+r8], al
	sub	r8, 1
.L297:
	test	r8, r8
	jne	.L298
.L295:
	ret
	.p2align 5
.L301:
	movzx	r9d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx+rax], r9b
	add	rax, 1
.L300:
	cmp	rax, r8
	jne	.L301
	jmp	.L295
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
.L318:
	cmp	eax, 32
	je	.L322
	bt	ecx, eax
	jc	.L323
	add	eax, 1
	jmp	.L318
.L323:
	add	eax, 1
.L320:
	ret
.L322:
	mov	eax, 0
	jmp	.L320
	.seh_endproc
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	.seh_endprologue
	mov	eax, 0
	test	ecx, ecx
	je	.L325
	mov	eax, 1
	jmp	.L326
	.p2align 4
.L327:
	sar	ecx
	add	eax, 1
.L326:
	test	cl, 1
	je	.L327
.L325:
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
	ja	.L330
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
	movzx	eax, al
.L330:
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
	ja	.L333
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
	movzx	eax, al
.L333:
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
	ja	.L338
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	.L336
.L338:
	fstp	st(0)
.L336:
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
	jp	.L341
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm0, xmm1
	jp	.L347
	jne	.L347
.L341:
	ret
.L347:
	movss	xmm1, DWORD PTR .LC10[rip]
	test	edx, edx
	jns	.L345
	movss	xmm1, DWORD PTR .LC9[rip]
	jmp	.L345
	.p2align 5
.L344:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L341
	mulss	xmm1, xmm1
.L345:
	test	dl, 1
	je	.L344
	mulss	xmm0, xmm1
	jmp	.L344
	.seh_endproc
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L349
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm0, xmm1
	jp	.L355
	jne	.L355
.L349:
	ret
.L355:
	movsd	xmm1, QWORD PTR .LC12[rip]
	test	edx, edx
	jns	.L353
	movsd	xmm1, QWORD PTR .LC11[rip]
	jmp	.L353
	.p2align 5
.L352:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L349
	mulsd	xmm1, xmm1
.L353:
	test	dl, 1
	je	.L352
	mulsd	xmm0, xmm1
	jmp	.L352
	.seh_endproc
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	.seh_endprologue
	mov	rax, rcx
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L357
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	.L363
	jne	.L363
	jmp	.L357
.L365:
	fstp	st(0)
.L357:
	fstp	TBYTE PTR [rax]
	ret
.L363:
	test	r8d, r8d
	js	.L364
	fld	DWORD PTR .LC10[rip]
	jmp	.L361
.L364:
	fld	DWORD PTR .LC9[rip]
	jmp	.L361
	.p2align 5
.L360:
	mov	edx, r8d
	shr	edx, 31
	add	edx, r8d
	sar	edx
	mov	r8d, edx
	je	.L365
	fmul	st, st(0)
.L361:
	test	r8b, 1
	je	.L360
	fmul	st(1), st
	jmp	.L360
	.seh_endproc
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	.seh_endprologue
	mov	rax, rcx
	add	r8, rcx
	mov	r9, rcx
	jmp	.L367
	.p2align 5
.L368:
	add	rdx, 1
	add	r9, 1
	movzx	r10d, BYTE PTR -1[r9]
	xor	r10b, BYTE PTR -1[rdx]
	mov	BYTE PTR -1[r9], r10b
.L367:
	cmp	r9, r8
	jne	.L368
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
	jmp	.L370
	.p2align 5
.L372:
	add	rsi, 1
	add	rax, 1
	sub	rbx, 1
.L370:
	test	rbx, rbx
	je	.L371
	movzx	edx, BYTE PTR [rsi]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	jne	.L372
.L371:
	test	rbx, rbx
	jne	.L373
	mov	BYTE PTR [rax], 0
.L373:
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
.L375:
	cmp	rax, rdx
	je	.L376
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L377
.L376:
	ret
.L377:
	add	rax, 1
	jmp	.L375
	.seh_endproc
	.globl	strpbrk
	.def	strpbrk;	.scl	2;	.type	32;	.endef
	.seh_proc	strpbrk
strpbrk:
	.seh_endprologue
.L379:
	cmp	BYTE PTR [rcx], 0
	je	.L385
	mov	r8, rdx
	.p2align 5
.L382:
	cmp	BYTE PTR [r8], 0
	je	.L386
	add	r8, 1
	movzx	eax, BYTE PTR [rcx]
	cmp	BYTE PTR -1[r8], al
	jne	.L382
	mov	rax, rcx
.L380:
	ret
.L386:
	add	rcx, 1
	jmp	.L379
.L385:
	mov	eax, 0
	jmp	.L380
	.seh_endproc
	.globl	strrchr
	.def	strrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strrchr
strrchr:
	.seh_endprologue
	mov	eax, 0
	.p2align 5
.L389:
	movsx	r8d, BYTE PTR [rcx]
	cmp	edx, r8d
	cmove	rax, rcx
	add	rcx, 1
	cmp	BYTE PTR -1[rcx], 0
	jne	.L389
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
	je	.L393
	movsx	ebp, BYTE PTR [rsi]
.L394:
	mov	edx, ebp
	mov	rcx, rbx
	call	strchr
	mov	rbx, rax
	test	rax, rax
	je	.L398
	mov	r8, rdi
	mov	rdx, rsi
	mov	rcx, rbx
	call	strncmp
	test	eax, eax
	je	.L397
	add	rbx, 1
	jmp	.L394
.L398:
	mov	eax, 0
.L393:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
.L397:
	mov	rax, rbx
	jmp	.L393
	.seh_endproc
	.globl	copysign
	.def	copysign;	.scl	2;	.type	32;	.endef
	.seh_proc	copysign
copysign:
	.seh_endprologue
	pxor	xmm2, xmm2
	comisd	xmm2, xmm0
	ja	.L412
.L400:
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L403
	comisd	xmm2, xmm1
	ja	.L402
.L403:
	ret
.L412:
	comisd	xmm1, xmm2
	jbe	.L400
.L402:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	jmp	.L403
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
	je	.L414
	cmp	rdx, r9
	jb	.L419
	lea	rbp, -1[r9]
	lea	r12, 1[r8]
	jmp	.L415
	.p2align 4
.L416:
	add	rbx, 1
.L415:
	cmp	rdi, rbx
	jb	.L421
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rbx], al
	jne	.L416
	lea	rcx, 1[rbx]
	mov	r8, rbp
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.L416
	mov	rax, rbx
	jmp	.L414
.L421:
	mov	eax, 0
.L414:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
.L419:
	mov	eax, 0
	jmp	.L414
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
	ja	.L440
.L424:
	mov	eax, 0
	comisd	xmm0, QWORD PTR .LC14[rip]
	jb	.L439
	movsd	xmm1, QWORD PTR .LC14[rip]
	movsd	xmm2, QWORD PTR .LC11[rip]
	jmp	.L426
.L440:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	mov	ecx, 1
	jmp	.L424
	.p2align 4
.L428:
	add	eax, 1
	mulsd	xmm0, xmm2
.L426:
	comisd	xmm0, xmm1
	jnb	.L428
.L429:
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L432
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L432:
	ret
.L439:
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	setp	al
	mov	r8d, 1
	cmovne	eax, r8d
	movsd	xmm1, QWORD PTR .LC11[rip]
	comisd	xmm1, xmm0
	seta	r8b
	test	r8b, al
	jne	.L435
	mov	eax, 0
	jmp	.L429
	.p2align 4
.L431:
	sub	eax, 1
	addsd	xmm0, xmm0
.L430:
	comisd	xmm1, xmm0
	ja	.L431
	jmp	.L429
.L435:
	mov	eax, 0
	movsd	xmm1, QWORD PTR .LC11[rip]
	jmp	.L430
	.seh_endproc
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	mov	r8d, 0
	jmp	.L442
	.p2align 5
.L443:
	mov	rax, rcx
	and	eax, 1
	imul	rax, rdx
	add	rdx, rdx
	shr	rcx
	lea	r8, [r8+rax]
.L442:
	test	rcx, rcx
	jne	.L443
	mov	rax, r8
	ret
	.seh_endproc
	.globl	udivmodsi4
	.def	udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	udivmodsi4
udivmodsi4:
	.seh_endprologue
	mov	r9d, 1
	jmp	.L445
	.p2align 5
.L448:
	add	edx, edx
	add	r9d, r9d
.L445:
	cmp	edx, ecx
	setb	r10b
	test	r9d, r9d
	setne	al
	test	r10b, al
	je	.L454
	test	edx, edx
	jns	.L448
	mov	eax, 0
	jmp	.L447
.L454:
	mov	eax, 0
	jmp	.L447
	.p2align 4
.L450:
	shr	r9d
	shr	edx
.L447:
	test	r9d, r9d
	je	.L455
	cmp	ecx, edx
	jb	.L450
	sub	ecx, edx
	or	eax, r9d
	jmp	.L450
.L455:
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
	je	.L457
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	edx, -1[rax]
.L457:
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
	je	.L460
	bsr	rax, rax
	xor	rax, 63
	lea	edx, -1[rax]
.L460:
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__mulsi3
	.def	__mulsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3
__mulsi3:
	.seh_endprologue
	mov	r8d, 0
	jmp	.L463
	.p2align 5
.L464:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	shr	ecx
	add	edx, edx
	lea	r8d, [rax+r8]
.L463:
	test	ecx, ecx
	jne	.L464
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
	jb	.L466
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jnb	.L467
.L466:
	lea	r11d, 0[0+r10*8]
	mov	edx, 0
	jmp	.L468
	.p2align 5
.L469:
	mov	r10, QWORD PTR [r9+rdx]
	mov	QWORD PTR [rcx+rdx], r10
	add	rdx, 8
.L468:
	cmp	rdx, r11
	jne	.L469
	mov	eax, eax
	jmp	.L470
	.p2align 5
.L471:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
.L470:
	cmp	eax, r8d
	jb	.L471
.L465:
	ret
	.p2align 5
.L473:
	mov	eax, r8d
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
.L467:
	sub	r8d, 1
	cmp	r8d, -1
	jne	.L473
	jmp	.L465
	.seh_endproc
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	.seh_endprologue
	mov	r9d, r8d
	shr	r9d
	cmp	rcx, rdx
	jb	.L476
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L477
.L476:
	lea	r10d, [r9+r9]
	mov	eax, 0
	jmp	.L478
	.p2align 5
.L479:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
.L478:
	cmp	rax, r10
	jne	.L479
	test	r8b, 1
	je	.L475
	lea	eax, -1[r8]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], dl
.L475:
	ret
	.p2align 5
.L481:
	mov	eax, r8d
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
.L477:
	sub	r8d, 1
	cmp	r8d, -1
	jne	.L481
	jmp	.L475
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
	jb	.L484
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jnb	.L485
.L484:
	lea	r11d, 0[0+r10*4]
	mov	edx, 0
	jmp	.L486
	.p2align 5
.L487:
	mov	r10d, DWORD PTR [r9+rdx]
	mov	DWORD PTR [rcx+rdx], r10d
	add	rdx, 4
.L486:
	cmp	rdx, r11
	jne	.L487
	mov	eax, eax
	jmp	.L488
	.p2align 5
.L489:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
.L488:
	cmp	eax, r8d
	jb	.L489
.L483:
	ret
	.p2align 5
.L491:
	mov	eax, r8d
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
.L485:
	sub	r8d, 1
	cmp	r8d, -1
	jne	.L491
	jmp	.L483
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
	js	.L501
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
.L502:
	ret
.L501:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	addsd	xmm0, xmm0
	jmp	.L502
	.seh_endproc
	.globl	__ulltof
	.def	__ulltof;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltof
__ulltof:
	.seh_endprologue
	test	rcx, rcx
	js	.L504
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
.L505:
	ret
.L504:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
	jmp	.L505
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
.L508:
	cmp	eax, 16
	je	.L509
	mov	edx, r8d
	sub	edx, eax
	bt	ecx, edx
	jc	.L509
	add	eax, 1
	jmp	.L508
.L509:
	ret
	.seh_endproc
	.globl	__ctzhi2
	.def	__ctzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzhi2
__ctzhi2:
	.seh_endprologue
	mov	eax, 0
	movzx	ecx, cx
.L512:
	cmp	eax, 16
	je	.L513
	bt	ecx, eax
	jc	.L513
	add	eax, 1
	jmp	.L512
.L513:
	ret
	.seh_endproc
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC15[rip]
	jnb	.L521
	cvttss2si	eax, xmm0
.L518:
	ret
.L521:
	subss	xmm0, DWORD PTR .LC15[rip]
	cvttss2si	eax, xmm0
	add	eax, 32768
	jmp	.L518
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
	jmp	.L523
	.p2align 5
.L524:
	mov	edx, r8d
	sar	edx, cl
	and	edx, 1
	add	ecx, 1
	lea	eax, [rdx+rax]
.L523:
	cmp	ecx, 16
	jne	.L524
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
	jmp	.L526
	.p2align 5
.L527:
	mov	eax, r8d
	sar	eax, cl
	and	eax, 1
	add	ecx, 1
	lea	edx, [rax+rdx]
.L526:
	cmp	ecx, 16
	jne	.L527
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__mulsi3_iq2000
	.def	__mulsi3_iq2000;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_iq2000
__mulsi3_iq2000:
	.seh_endprologue
	mov	r8d, 0
	jmp	.L529
	.p2align 5
.L530:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	shr	ecx
	add	edx, edx
	lea	r8d, [rax+r8]
.L529:
	test	ecx, ecx
	jne	.L530
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
	jne	.L533
	jmp	.L532
	.p2align 5
.L534:
	mov	r8d, edx
	and	r8d, 1
	neg	r8d
	and	r8d, ecx
	add	ecx, ecx
	shr	edx
	lea	eax, [r8+rax]
.L533:
	test	edx, edx
	jne	.L534
.L532:
	ret
	.seh_endproc
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	.seh_endprologue
	mov	r9d, 1
	jmp	.L537
	.p2align 5
.L540:
	add	edx, edx
	add	r9d, r9d
.L537:
	cmp	edx, ecx
	setb	r10b
	test	r9d, r9d
	setne	al
	test	r10b, al
	je	.L546
	test	edx, edx
	jns	.L540
	mov	eax, 0
	jmp	.L539
.L546:
	mov	eax, 0
	jmp	.L539
	.p2align 4
.L542:
	shr	r9d
	shr	edx
.L539:
	test	r9d, r9d
	je	.L547
	cmp	ecx, edx
	jb	.L542
	sub	ecx, edx
	or	eax, r9d
	jmp	.L542
.L547:
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
	ja	.L549
	comiss	xmm0, xmm1
	seta	al
	movzx	eax, al
.L549:
	ret
	.seh_endproc
	.globl	__mspabi_cmpd
	.def	__mspabi_cmpd;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpd
__mspabi_cmpd:
	.seh_endprologue
	mov	eax, -1
	comisd	xmm1, xmm0
	ja	.L552
	comisd	xmm0, xmm1
	seta	al
	movzx	eax, al
.L552:
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
	js	.L563
.L557:
	mov	r9d, 0
	mov	r8d, 0
	jmp	.L558
.L563:
	neg	edx
	mov	r11d, 1
	jmp	.L557
	.p2align 6
.L559:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	sar	edx
	add	r8d, 1
	lea	r9d, [r9+rax]
.L558:
	test	edx, edx
	setne	al
	cmp	r8b, 31
	setbe	r10b
	test	r10b, al
	jne	.L559
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
	js	.L569
.L565:
	test	edx, edx
	js	.L570
.L566:
	mov	r8d, 0
	call	__udivmodsi4
	mov	edx, eax
	neg	edx
	test	ebx, ebx
	cmovne	eax, edx
	add	rsp, 32
	pop	rbx
	ret
.L569:
	neg	ecx
	mov	ebx, 1
	jmp	.L565
.L570:
	neg	edx
	xor	ebx, 1
	jmp	.L566
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
	js	.L575
.L572:
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
.L575:
	neg	ecx
	mov	ebx, 1
	jmp	.L572
	.seh_endproc
	.globl	__udivmodhi4
	.def	__udivmodhi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodhi4
__udivmodhi4:
	.seh_endprologue
	mov	r9d, 1
	jmp	.L577
	.p2align 5
.L580:
	add	edx, edx
	add	r9d, r9d
.L577:
	cmp	dx, cx
	setb	r10b
	test	r9w, r9w
	setne	al
	test	r10b, al
	je	.L586
	test	dx, dx
	jns	.L580
	mov	eax, 0
	jmp	.L579
.L586:
	mov	eax, 0
	jmp	.L579
	.p2align 5
.L582:
	shr	r9w
	shr	dx
.L579:
	test	r9w, r9w
	je	.L587
	cmp	cx, dx
	jb	.L582
	sub	ecx, edx
	or	eax, r9d
	jmp	.L582
.L587:
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
	jmp	.L589
	.p2align 5
.L592:
	add	edx, edx
	add	r9d, r9d
.L589:
	cmp	edx, ecx
	setb	r10b
	test	r9d, r9d
	setne	al
	test	r10b, al
	je	.L598
	test	edx, edx
	jns	.L592
	mov	eax, 0
	jmp	.L591
.L598:
	mov	eax, 0
	jmp	.L591
	.p2align 4
.L594:
	shr	r9d
	shr	edx
.L591:
	test	r9d, r9d
	je	.L599
	cmp	ecx, edx
	jb	.L594
	sub	ecx, edx
	or	eax, r9d
	jmp	.L594
.L599:
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
	je	.L601
	lea	ecx, -32[rdx]
	sal	r8d, cl
	mov	rax, r8
	sal	rax, 32
.L603:
	ret
.L601:
	mov	rax, rcx
	test	edx, edx
	je	.L603
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
	jmp	.L603
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
	je	.L606
	mov	r10d, 0
	lea	ecx, -64[rdx]
	sal	r8, cl
	mov	r11, r8
.L607:
	mov	rcx, r10
	mov	rax, r11
.L608:
	mov	QWORD PTR [rsp], rcx
	mov	rdx, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rax
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
.L606:
	test	edx, edx
	je	.L608
	mov	r10, rcx
	mov	ecx, edx
	sal	r10, cl
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	r8, cl
	or	r8, r9
	mov	r11, r8
	jmp	.L607
	.seh_endproc
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L611
	sar	r8, 32
	mov	eax, r8d
	sar	eax, 31
	lea	ecx, -32[rdx]
	sar	r8d, cl
	sal	rax, 32
	or	rax, r8
.L613:
	ret
.L611:
	mov	rax, rcx
	test	edx, edx
	je	.L613
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
	jmp	.L613
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
	je	.L616
	sar	rcx, 63
	mov	r12, rcx
	lea	ecx, -64[rdx]
	sar	rax, cl
	mov	r11, rax
.L617:
	mov	r8, r11
	mov	rcx, r12
.L618:
	mov	QWORD PTR [rsp], r8
	mov	rax, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 16
	pop	r12
	ret
.L616:
	test	edx, edx
	je	.L618
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
	jmp	.L617
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
	test	dl, 2
	sete	cl
	movzx	ecx, cl
	sub	r8d, edx
	mov	edx, ecx
	imul	edx, r8d
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
	jl	.L625
	mov	r9, rcx
	sar	r9, 32
	mov	r8, rdx
	sar	r8, 32
	mov	eax, 2
	cmp	r9d, r8d
	jg	.L625
	mov	eax, 0
	cmp	ecx, edx
	jb	.L625
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L625:
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
	jl	.L632
	mov	ecx, 2
	jg	.L632
	mov	ecx, 0
	cmp	r8, r9
	jb	.L632
	cmp	r9, r8
	setb	cl
	movzx	ecx, cl
	add	ecx, 1
.L632:
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
	jne	.L640
	xor	eax, eax
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	mov	edx, 0
	cmove	eax, edx
.L641:
	ret
.L640:
	rep bsf	rax, rax
	add	eax, 1
	jmp	.L641
	.seh_endproc
	.globl	__lshrdi3
	.def	__lshrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrdi3
__lshrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L644
	shr	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	shr	eax, cl
.L646:
	ret
.L644:
	mov	rax, rcx
	test	edx, edx
	je	.L646
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
	jmp	.L646
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
	je	.L649
	lea	ecx, -64[rdx]
	shr	r8, cl
	mov	r10, r8
	mov	r11d, 0
.L650:
	mov	rcx, r10
	mov	rax, r11
.L651:
	mov	QWORD PTR [rsp], rcx
	mov	rdx, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rax
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
.L649:
	test	edx, edx
	je	.L651
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
	jmp	.L650
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
	jmp	.L668
	.p2align 5
.L666:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L667
	mulsd	xmm0, xmm0
.L668:
	test	dl, 1
	je	.L666
	mulsd	xmm1, xmm0
	jmp	.L666
.L667:
	movapd	xmm0, xmm1
	test	ecx, ecx
	je	.L669
	movsd	xmm0, QWORD PTR .LC14[rip]
	divsd	xmm0, xmm1
.L669:
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
	jmp	.L674
	.p2align 5
.L672:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L673
	mulss	xmm0, xmm0
.L674:
	test	dl, 1
	je	.L672
	mulss	xmm1, xmm0
	jmp	.L672
.L673:
	movaps	xmm0, xmm1
	test	ecx, ecx
	je	.L675
	movss	xmm0, DWORD PTR .LC16[rip]
	divss	xmm0, xmm1
.L675:
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
	jb	.L678
	mov	r8, r9
	mov	r9, rdx
	shr	r9, 32
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L678
	mov	eax, 0
	cmp	ecx, edx
	jb	.L678
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L678:
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
	jb	.L685
	mov	ecx, 2
	cmp	rdx, rax
	jb	.L685
	mov	ecx, 0
	cmp	r8, r9
	jb	.L685
	cmp	r9, r8
	setb	cl
	movzx	ecx, cl
	add	ecx, 1
.L685:
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
	.align 4
.LC9:
	.long	1056964608
	.set	.LC10,.LC12+4
	.align 8
.LC11:
	.long	0
	.long	1071644672
	.align 8
.LC12:
	.long	0
	.long	1073741824
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
