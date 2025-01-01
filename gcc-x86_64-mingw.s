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
	cmp	ecx, 3
	setb	al
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
	jbe	.L94
	cmp	cx, 8231
	setbe	dl
	movzx	eax, cx
	sub	eax, 8234
	cmp	eax, 47061
	setbe	r8b
	mov	eax, 1
	or	dl, r8b
	jne	.L89
	movzx	edx, cx
	sub	edx, 57344
	cmp	edx, 8184
	jbe	.L89
	movzx	edx, cx
	sub	edx, 65532
	mov	eax, 0
	cmp	edx, 1048579
	ja	.L89
	not	ecx
	test	ecx, 65534
	setne	al
	movzx	eax, al
	jmp	.L89
.L94:
	lea	eax, 1[rcx]
	and	eax, 127
	cmp	eax, 32
	setg	al
	movzx	eax, al
.L89:
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
	cmp	ecx, 6
	setb	dl
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
	jp	.L101
	ucomisd	xmm1, xmm1
	jp	.L104
	comisd	xmm0, xmm1
	jbe	.L107
	subsd	xmm0, xmm1
.L101:
	ret
.L104:
	movapd	xmm0, xmm1
	jmp	.L101
.L107:
	pxor	xmm0, xmm0
	jmp	.L101
	.seh_endproc
	.globl	fdimf
	.def	fdimf;	.scl	2;	.type	32;	.endef
	.seh_proc	fdimf
fdimf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L109
	ucomiss	xmm1, xmm1
	jp	.L112
	comiss	xmm0, xmm1
	jbe	.L115
	subss	xmm0, xmm1
.L109:
	ret
.L112:
	movaps	xmm0, xmm1
	jmp	.L109
.L115:
	pxor	xmm0, xmm0
	jmp	.L109
	.seh_endproc
	.globl	fmax
	.def	fmax;	.scl	2;	.type	32;	.endef
	.seh_proc	fmax
fmax:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L120
	ucomisd	xmm1, xmm1
	jp	.L121
	movmskpd	edx, xmm0
	and	edx, 1
	movmskpd	eax, xmm1
	and	eax, 1
	cmp	edx, eax
	je	.L118
	movmskpd	eax, xmm0
	movapd	xmm2, xmm0
	test	al, 1
	je	.L117
	movapd	xmm2, xmm1
	jmp	.L117
.L118:
	movapd	xmm2, xmm1
	maxsd	xmm2, xmm0
.L117:
	movapd	xmm0, xmm2
	ret
.L120:
	movapd	xmm2, xmm1
	jmp	.L117
.L121:
	movapd	xmm2, xmm0
	jmp	.L117
	.seh_endproc
	.globl	fmaxf
	.def	fmaxf;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxf
fmaxf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L129
	ucomiss	xmm1, xmm1
	jp	.L130
	movd	edx, xmm0
	and	edx, -2147483648
	movd	eax, xmm1
	and	eax, -2147483648
	cmp	edx, eax
	je	.L127
	movd	eax, xmm0
	movaps	xmm2, xmm0
	test	eax, eax
	jns	.L126
	movaps	xmm2, xmm1
	jmp	.L126
.L127:
	movaps	xmm2, xmm1
	maxss	xmm2, xmm0
.L126:
	movaps	xmm0, xmm2
	ret
.L129:
	movaps	xmm2, xmm1
	jmp	.L126
.L130:
	movaps	xmm2, xmm0
	jmp	.L126
	.seh_endproc
	.globl	fmaxl
	.def	fmaxl;	.scl	2;	.type	32;	.endef
	.seh_proc	fmaxl
fmaxl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L145
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L146
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
	je	.L138
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmovne	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
.L134:
	mov	rax, rcx
	ret
.L145:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L134
.L146:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L134
.L138:
	fcomi	st, st(1)
	fcmovbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	jmp	.L134
	.seh_endproc
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L151
	ucomisd	xmm1, xmm1
	jp	.L152
	movmskpd	edx, xmm0
	and	edx, 1
	movmskpd	eax, xmm1
	and	eax, 1
	cmp	edx, eax
	je	.L149
	movmskpd	eax, xmm0
	movapd	xmm2, xmm1
	test	al, 1
	je	.L148
	movapd	xmm2, xmm0
	jmp	.L148
.L149:
	movapd	xmm2, xmm0
	minsd	xmm2, xmm1
.L148:
	movapd	xmm0, xmm2
	ret
.L151:
	movapd	xmm2, xmm1
	jmp	.L148
.L152:
	movapd	xmm2, xmm0
	jmp	.L148
	.seh_endproc
	.globl	fminf
	.def	fminf;	.scl	2;	.type	32;	.endef
	.seh_proc	fminf
fminf:
	.seh_endprologue
	ucomiss	xmm0, xmm0
	jp	.L160
	ucomiss	xmm1, xmm1
	jp	.L161
	movd	edx, xmm0
	and	edx, -2147483648
	movd	eax, xmm1
	and	eax, -2147483648
	cmp	edx, eax
	je	.L158
	movd	eax, xmm0
	movaps	xmm2, xmm1
	test	eax, eax
	jns	.L157
	movaps	xmm2, xmm0
	jmp	.L157
.L158:
	movaps	xmm2, xmm0
	minss	xmm2, xmm1
.L157:
	movaps	xmm0, xmm2
	ret
.L160:
	movaps	xmm2, xmm1
	jmp	.L157
.L161:
	movaps	xmm2, xmm0
	jmp	.L157
	.seh_endproc
	.globl	fminl
	.def	fminl;	.scl	2;	.type	32;	.endef
	.seh_proc	fminl
fminl:
	.seh_endprologue
	fld	TBYTE PTR [r8]
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L176
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L177
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
	je	.L169
	fxch	st(1)
	fxam
	fnstsw	ax
	test	ah, 2
	fcmove	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
.L165:
	mov	rax, rcx
	ret
.L176:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L165
.L177:
	fstp	st(0)
	fstp	TBYTE PTR [rcx]
	jmp	.L165
.L169:
	fcomi	st, st(1)
	fcmovnbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	jmp	.L165
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
	jmp	.L179
	.p2align 5
.L180:
	mov	edx, ecx
	and	edx, 63
	movzx	edx, BYTE PTR [r8+rdx]
	mov	BYTE PTR [rax], dl
	add	rax, 1
	shr	ecx, 6
.L179:
	test	ecx, ecx
	jne	.L180
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
	je	.L186
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR 8[rcx], rdx
	mov	QWORD PTR [rdx], rcx
	cmp	QWORD PTR [rcx], 0
	je	.L183
	mov	rax, QWORD PTR [rcx]
	mov	QWORD PTR 8[rax], rcx
.L183:
	ret
.L186:
	mov	QWORD PTR 8[rcx], 0
	mov	QWORD PTR [rcx], 0
	jmp	.L183
	.seh_endproc
	.globl	remque
	.def	remque;	.scl	2;	.type	32;	.endef
	.seh_proc	remque
remque:
	.seh_endprologue
	cmp	QWORD PTR [rcx], 0
	je	.L188
	mov	rax, QWORD PTR [rcx]
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L188:
	cmp	QWORD PTR 8[rcx], 0
	je	.L187
	mov	rax, QWORD PTR 8[rcx]
	mov	rdx, QWORD PTR [rcx]
	mov	QWORD PTR [rax], rdx
.L187:
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
	jmp	.L191
.L192:
	add	rbx, 1
.L191:
	cmp	rbx, rbp
	je	.L195
	mov	rdx, rsi
	mov	rcx, r12
	call	r13
	add	rsi, rdi
	test	eax, eax
	jne	.L192
	imul	rbx, rdi
	lea	rax, [r14+rbx]
	jmp	.L193
.L195:
	lea	rax, 1[rbp]
	mov	QWORD PTR [r15], rax
	imul	rbp, rdi
	lea	rcx, [r14+rbp]
	mov	r8, rdi
	mov	rdx, r12
	call	memcpy
.L193:
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
	jmp	.L197
.L198:
	add	rbx, 1
.L197:
	cmp	rbx, r12
	je	.L201
	mov	rdx, rsi
	mov	rcx, rbp
	call	r14
	add	rsi, rdi
	test	eax, eax
	jne	.L198
	imul	rbx, rdi
	lea	rax, 0[r13+rbx]
	jmp	.L199
.L201:
	mov	eax, 0
.L199:
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
	jmp	.L204
.L205:
	add	rbx, 1
.L204:
	movsx	ecx, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L205
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L211
	mov	ecx, 0
	cmp	eax, 45
	jne	.L207
	mov	ecx, 1
.L206:
	add	rbx, 1
.L207:
	mov	edx, 0
	jmp	.L208
.L211:
	mov	ecx, 0
	jmp	.L206
	.p2align 5
.L209:
	lea	edx, [rdx+rdx*4]
	add	edx, edx
	add	rbx, 1
	movsx	eax, BYTE PTR -1[rbx]
	sub	eax, 48
	sub	edx, eax
.L208:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L209
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
	jmp	.L215
.L216:
	add	rbx, 1
.L215:
	movsx	ecx, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L216
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L222
	mov	ecx, 0
	cmp	eax, 45
	jne	.L218
	mov	ecx, 1
.L217:
	add	rbx, 1
.L218:
	mov	edx, 0
	jmp	.L219
.L222:
	mov	ecx, 0
	jmp	.L217
	.p2align 5
.L220:
	lea	edx, [rdx+rdx*4]
	add	edx, edx
	add	rbx, 1
	movsx	eax, BYTE PTR -1[rbx]
	sub	eax, 48
	sub	edx, eax
.L219:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L220
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
	jmp	.L226
.L227:
	add	rbx, 1
.L226:
	movsx	ecx, BYTE PTR [rbx]
	call	isspace
	test	eax, eax
	jne	.L227
	movsx	eax, BYTE PTR [rbx]
	cmp	eax, 43
	je	.L233
	mov	ecx, 0
	cmp	eax, 45
	jne	.L229
	mov	ecx, 1
.L228:
	add	rbx, 1
.L229:
	mov	edx, 0
	jmp	.L230
.L233:
	mov	ecx, 0
	jmp	.L228
	.p2align 6
.L231:
	lea	rdx, [rdx+rdx*4]
	add	rdx, rdx
	add	rbx, 1
	movsx	eax, BYTE PTR -1[rbx]
	sub	eax, 48
	cdqe
	sub	rdx, rax
.L230:
	movsx	eax, BYTE PTR [rbx]
	sub	eax, 48
	cmp	eax, 9
	jbe	.L231
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
	jmp	.L237
.L244:
	shr	rsi
.L237:
	test	rsi, rsi
	je	.L243
	mov	rbx, rsi
	shr	rbx
	imul	rbx, rdi
	add	rbx, rbp
	mov	rdx, rbx
	mov	rcx, r12
	call	r13
	test	eax, eax
	js	.L244
	jle	.L242
	lea	rbp, [rbx+rdi]
	mov	rax, rsi
	shr	rax
	sub	rsi, 1
	sub	rsi, rax
	jmp	.L237
.L243:
	mov	eax, 0
.L240:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	ret
.L242:
	mov	rax, rbx
	jmp	.L240
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
	jmp	.L246
.L248:
	sar	esi
.L246:
	test	esi, esi
	je	.L251
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
	je	.L250
	jle	.L248
	lea	rdi, [rbx+rbp]
	sub	esi, 1
	jmp	.L248
.L251:
	mov	eax, 0
.L247:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	pop	r13
	pop	r14
	ret
.L250:
	mov	rax, rbx
	jmp	.L247
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
	jmp	.L260
	.p2align 4
.L262:
	add	rcx, 2
.L260:
	cmp	WORD PTR [rcx], 0
	je	.L261
	cmp	dx, WORD PTR [rcx]
	jne	.L262
.L261:
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
	jmp	.L266
.L268:
	add	rcx, 2
	add	rdx, 2
.L266:
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L267
	cmp	WORD PTR [rcx], 0
	je	.L267
	test	ax, ax
	jne	.L268
.L267:
	mov	eax, -1
	movzx	r8d, WORD PTR [rdx]
	cmp	WORD PTR [rcx], r8w
	jb	.L269
	movzx	eax, WORD PTR [rcx]
	cmp	r8w, ax
	setb	al
	movzx	eax, al
.L269:
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
.L272:
	add	rdx, 2
	add	r8, 2
	movzx	r9d, WORD PTR -2[rdx]
	mov	WORD PTR -2[r8], r9w
	test	r9w, r9w
	jne	.L272
	ret
	.seh_endproc
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L275
	.p2align 4
.L276:
	add	rax, 2
.L275:
	cmp	WORD PTR [rax], 0
	jne	.L276
	sub	rax, rcx
	sar	rax
	ret
	.seh_endproc
	.globl	wcsncmp
	.def	wcsncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcsncmp
wcsncmp:
	.seh_endprologue
.L278:
	test	r8, r8
	je	.L279
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	jne	.L279
	cmp	WORD PTR [rcx], 0
	je	.L279
	test	ax, ax
	je	.L279
	sub	r8, 1
	add	rcx, 2
	add	rdx, 2
	jmp	.L278
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
	.globl	wmemchr
	.def	wmemchr;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemchr
wmemchr:
	.seh_endprologue
	jmp	.L285
	.p2align 5
.L287:
	sub	r8, 1
	add	rcx, 2
.L285:
	test	r8, r8
	je	.L286
	cmp	dx, WORD PTR [rcx]
	jne	.L287
.L286:
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
	jmp	.L291
	.p2align 5
.L293:
	sub	r8, 1
	add	rcx, 2
	add	rdx, 2
.L291:
	test	r8, r8
	je	.L292
	movzx	eax, WORD PTR [rdx]
	cmp	WORD PTR [rcx], ax
	je	.L293
.L292:
	mov	eax, 0
	test	r8, r8
	je	.L294
	mov	eax, -1
	movzx	r9d, WORD PTR [rdx]
	cmp	WORD PTR [rcx], r9w
	jb	.L294
	movzx	eax, WORD PTR [rcx]
	cmp	r9w, ax
	setb	al
	movzx	eax, al
.L294:
	ret
	.seh_endproc
	.globl	wmemcpy
	.def	wmemcpy;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemcpy
wmemcpy:
	.seh_endprologue
	mov	rax, rcx
	mov	r9d, 0
	jmp	.L298
	.p2align 5
.L299:
	movzx	r10d, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], r10w
	add	r9, 1
.L298:
	cmp	r9, r8
	jne	.L299
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
	jmp	.L303
	.p2align 5
.L304:
	movzx	ecx, WORD PTR [rdx+r8*2]
	mov	WORD PTR [rax+r8*2], cx
.L302:
	sub	r8, 1
	cmp	r8, -1
	jne	.L304
.L301:
	ret
	.p2align 5
.L305:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	add	r9, 1
.L303:
	cmp	r9, r8
	jne	.L305
	jmp	.L301
	.seh_endproc
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	.seh_endprologue
	mov	rax, rcx
	mov	r9d, 0
	jmp	.L308
	.p2align 4
.L309:
	mov	WORD PTR [rax+r9*2], dx
	add	r9, 1
.L308:
	cmp	r9, r8
	jne	.L309
	ret
	.seh_endproc
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	.seh_endprologue
	cmp	rcx, rdx
	jb	.L312
	mov	eax, 0
	jne	.L315
	jmp	.L310
	.p2align 5
.L313:
	movzx	eax, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[rdx+r8], al
	sub	r8, 1
.L312:
	test	r8, r8
	jne	.L313
.L310:
	ret
	.p2align 5
.L316:
	movzx	r9d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx+rax], r9b
	add	rax, 1
.L315:
	cmp	rax, r8
	jne	.L316
	jmp	.L310
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
.L333:
	cmp	eax, 32
	je	.L337
	bt	ecx, eax
	jc	.L338
	add	eax, 1
	jmp	.L333
.L338:
	add	eax, 1
.L335:
	ret
.L337:
	mov	eax, 0
	jmp	.L335
	.seh_endproc
	.globl	libiberty_ffs
	.def	libiberty_ffs;	.scl	2;	.type	32;	.endef
	.seh_proc	libiberty_ffs
libiberty_ffs:
	.seh_endprologue
	mov	eax, 0
	test	ecx, ecx
	je	.L340
	mov	eax, 1
	jmp	.L341
	.p2align 4
.L342:
	sar	ecx
	add	eax, 1
.L341:
	test	cl, 1
	je	.L342
.L340:
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
	ja	.L345
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
	movzx	eax, al
.L345:
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
	ja	.L351
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
	movzx	eax, al
.L351:
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
	ja	.L362
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	movzx	eax, al
	jmp	.L357
.L362:
	fstp	st(0)
.L357:
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
	jp	.L365
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm0, xmm1
	jp	.L371
	jne	.L371
.L365:
	ret
.L371:
	movss	xmm1, DWORD PTR .LC10[rip]
	test	edx, edx
	jns	.L369
	movss	xmm1, DWORD PTR .LC9[rip]
	jmp	.L369
	.p2align 5
.L368:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L365
	mulss	xmm1, xmm1
.L369:
	test	dl, 1
	je	.L368
	mulss	xmm0, xmm1
	jmp	.L368
	.seh_endproc
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L373
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm0, xmm1
	jp	.L379
	jne	.L379
.L373:
	ret
.L379:
	movsd	xmm1, QWORD PTR .LC12[rip]
	test	edx, edx
	jns	.L377
	movsd	xmm1, QWORD PTR .LC11[rip]
	jmp	.L377
	.p2align 5
.L376:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L373
	mulsd	xmm1, xmm1
.L377:
	test	dl, 1
	je	.L376
	mulsd	xmm0, xmm1
	jmp	.L376
	.seh_endproc
	.globl	ldexpl
	.def	ldexpl;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexpl
ldexpl:
	.seh_endprologue
	mov	rax, rcx
	fld	TBYTE PTR [rdx]
	fucomi	st, st(0)
	jp	.L381
	fld	st(0)
	fadd	st, st(1)
	fxch	st(1)
	fucomi	st, st(1)
	fstp	st(1)
	jp	.L387
	jne	.L387
	jmp	.L381
.L389:
	fstp	st(0)
.L381:
	fstp	TBYTE PTR [rax]
	ret
.L387:
	test	r8d, r8d
	js	.L388
	fld	DWORD PTR .LC10[rip]
	jmp	.L385
.L388:
	fld	DWORD PTR .LC9[rip]
	jmp	.L385
	.p2align 5
.L384:
	mov	edx, r8d
	shr	edx, 31
	add	edx, r8d
	sar	edx
	mov	r8d, edx
	je	.L389
	fmul	st, st(0)
.L385:
	test	r8b, 1
	je	.L384
	fmul	st(1), st
	jmp	.L384
	.seh_endproc
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	.seh_endprologue
	mov	rax, rcx
	add	r8, rcx
	mov	r9, rcx
	jmp	.L391
	.p2align 5
.L392:
	add	rdx, 1
	add	r9, 1
	movzx	r10d, BYTE PTR -1[r9]
	xor	r10b, BYTE PTR -1[rdx]
	mov	BYTE PTR -1[r9], r10b
.L391:
	cmp	r9, r8
	jne	.L392
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
	jmp	.L394
	.p2align 5
.L396:
	add	rsi, 1
	add	rax, 1
	sub	rbx, 1
.L394:
	test	rbx, rbx
	je	.L395
	movzx	edx, BYTE PTR [rsi]
	mov	BYTE PTR [rax], dl
	test	dl, dl
	jne	.L396
.L395:
	test	rbx, rbx
	jne	.L397
	mov	BYTE PTR [rax], 0
.L397:
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
.L399:
	cmp	rax, rdx
	je	.L400
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L401
.L400:
	ret
.L401:
	add	rax, 1
	jmp	.L399
	.seh_endproc
	.globl	strpbrk
	.def	strpbrk;	.scl	2;	.type	32;	.endef
	.seh_proc	strpbrk
strpbrk:
	.seh_endprologue
.L403:
	cmp	BYTE PTR [rcx], 0
	je	.L409
	mov	r8, rdx
	.p2align 5
.L406:
	cmp	BYTE PTR [r8], 0
	je	.L410
	add	r8, 1
	movzx	eax, BYTE PTR [rcx]
	cmp	BYTE PTR -1[r8], al
	jne	.L406
	mov	rax, rcx
.L404:
	ret
.L410:
	add	rcx, 1
	jmp	.L403
.L409:
	mov	eax, 0
	jmp	.L404
	.seh_endproc
	.globl	strrchr
	.def	strrchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strrchr
strrchr:
	.seh_endprologue
	mov	eax, 0
	.p2align 5
.L413:
	movsx	r8d, BYTE PTR [rcx]
	cmp	edx, r8d
	cmove	rax, rcx
	add	rcx, 1
	cmp	BYTE PTR -1[rcx], 0
	jne	.L413
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
	je	.L417
	movsx	ebp, BYTE PTR [rsi]
.L418:
	mov	edx, ebp
	mov	rcx, rbx
	call	strchr
	mov	rbx, rax
	test	rax, rax
	je	.L422
	mov	r8, rdi
	mov	rdx, rsi
	mov	rcx, rbx
	call	strncmp
	test	eax, eax
	je	.L421
	add	rbx, 1
	jmp	.L418
.L422:
	mov	eax, 0
.L417:
	add	rsp, 40
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	ret
.L421:
	mov	rax, rbx
	jmp	.L417
	.seh_endproc
	.globl	copysign
	.def	copysign;	.scl	2;	.type	32;	.endef
	.seh_proc	copysign
copysign:
	.seh_endprologue
	pxor	xmm2, xmm2
	comisd	xmm2, xmm0
	ja	.L436
.L424:
	pxor	xmm2, xmm2
	comisd	xmm0, xmm2
	jbe	.L427
	comisd	xmm2, xmm1
	ja	.L426
.L427:
	ret
.L436:
	comisd	xmm1, xmm2
	jbe	.L424
.L426:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	jmp	.L427
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
	je	.L438
	cmp	rdx, r9
	jb	.L443
	lea	rbp, -1[r9]
	lea	r12, 1[r8]
	jmp	.L439
	.p2align 4
.L440:
	add	rbx, 1
.L439:
	cmp	rdi, rbx
	jb	.L445
	movzx	eax, BYTE PTR [rsi]
	cmp	BYTE PTR [rbx], al
	jne	.L440
	lea	rcx, 1[rbx]
	mov	r8, rbp
	mov	rdx, r12
	call	memcmp
	test	eax, eax
	jne	.L440
	mov	rax, rbx
	jmp	.L438
.L445:
	mov	eax, 0
.L438:
	add	rsp, 32
	pop	rbx
	pop	rsi
	pop	rdi
	pop	rbp
	pop	r12
	ret
.L443:
	mov	eax, 0
	jmp	.L438
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
.L448:
	mov	eax, 0
	comisd	xmm0, QWORD PTR .LC14[rip]
	jb	.L463
	movsd	xmm1, QWORD PTR .LC14[rip]
	movsd	xmm2, QWORD PTR .LC11[rip]
	jmp	.L450
.L464:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
	mov	ecx, 1
	jmp	.L448
	.p2align 4
.L452:
	add	eax, 1
	mulsd	xmm0, xmm2
.L450:
	comisd	xmm0, xmm1
	jnb	.L452
.L453:
	mov	DWORD PTR [rdx], eax
	test	ecx, ecx
	je	.L456
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
.L456:
	ret
.L463:
	pxor	xmm1, xmm1
	ucomisd	xmm0, xmm1
	setp	al
	mov	r8d, 1
	cmovne	eax, r8d
	movsd	xmm1, QWORD PTR .LC11[rip]
	comisd	xmm1, xmm0
	seta	r8b
	test	r8b, al
	jne	.L459
	mov	eax, 0
	jmp	.L453
	.p2align 4
.L455:
	sub	eax, 1
	addsd	xmm0, xmm0
.L454:
	comisd	xmm1, xmm0
	ja	.L455
	jmp	.L453
.L459:
	mov	eax, 0
	movsd	xmm1, QWORD PTR .LC11[rip]
	jmp	.L454
	.seh_endproc
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	mov	eax, 0
	jmp	.L466
	.p2align 5
.L468:
	lea	r8, [rax+rdx]
	test	cl, 1
	cmovne	rax, r8
	add	rdx, rdx
	shr	rcx
.L466:
	test	rcx, rcx
	jne	.L468
	ret
	.seh_endproc
	.globl	udivmodsi4
	.def	udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	udivmodsi4
udivmodsi4:
	.seh_endprologue
	mov	r9d, 1
	jmp	.L470
	.p2align 5
.L473:
	add	edx, edx
	add	r9d, r9d
.L470:
	cmp	edx, ecx
	setb	r10b
	test	r9d, r9d
	setne	al
	test	r10b, al
	je	.L479
	test	edx, edx
	jns	.L473
	mov	eax, 0
	jmp	.L472
.L479:
	mov	eax, 0
	jmp	.L472
	.p2align 4
.L475:
	shr	r9d
	shr	edx
.L472:
	test	r9d, r9d
	je	.L480
	cmp	ecx, edx
	jb	.L475
	sub	ecx, edx
	or	eax, r9d
	jmp	.L475
.L480:
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
	not	eax
	cmp	al, cl
	cmovl	eax, ecx
	mov	edx, 7
	test	al, al
	je	.L483
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	edx, -1[rax]
.L483:
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__clrsbdi2
	.def	__clrsbdi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__clrsbdi2
__clrsbdi2:
	.seh_endprologue
	mov	rax, rcx
	not	rax
	cmp	rax, rcx
	cmovl	rax, rcx
	mov	edx, 63
	test	rax, rax
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
	mov	eax, 0
	jmp	.L490
	.p2align 5
.L492:
	lea	r8d, [rax+rdx]
	test	cl, 1
	cmovne	eax, r8d
	shr	ecx
	add	edx, edx
.L490:
	test	ecx, ecx
	jne	.L492
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
	jb	.L494
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jnb	.L495
.L494:
	lea	r11d, 0[0+r10*8]
	mov	edx, 0
	jmp	.L496
	.p2align 5
.L497:
	mov	r10, QWORD PTR [r9+rdx]
	mov	QWORD PTR [rcx+rdx], r10
	add	rdx, 8
.L496:
	cmp	rdx, r11
	jne	.L497
	mov	eax, eax
	jmp	.L498
	.p2align 5
.L499:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
.L498:
	cmp	eax, r8d
	jb	.L499
.L493:
	ret
	.p2align 5
.L501:
	mov	eax, r8d
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
.L495:
	sub	r8d, 1
	cmp	r8d, -1
	jne	.L501
	jmp	.L493
	.seh_endproc
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	.seh_endprologue
	mov	r9d, r8d
	shr	r9d
	cmp	rcx, rdx
	jb	.L504
	mov	eax, r8d
	add	rax, rdx
	cmp	rax, rcx
	jnb	.L505
.L504:
	lea	r10d, [r9+r9]
	mov	eax, 0
	jmp	.L506
	.p2align 5
.L507:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
.L506:
	cmp	rax, r10
	jne	.L507
	test	r8b, 1
	je	.L503
	lea	eax, -1[r8]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], dl
.L503:
	ret
	.p2align 5
.L509:
	mov	eax, r8d
	movzx	r9d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r9b
.L505:
	sub	r8d, 1
	cmp	r8d, -1
	jne	.L509
	jmp	.L503
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
	jb	.L512
	mov	edx, r8d
	add	rdx, r9
	cmp	rdx, rcx
	jnb	.L513
.L512:
	lea	r11d, 0[0+r10*4]
	mov	edx, 0
	jmp	.L514
	.p2align 5
.L515:
	mov	r10d, DWORD PTR [r9+rdx]
	mov	DWORD PTR [rcx+rdx], r10d
	add	rdx, 4
.L514:
	cmp	rdx, r11
	jne	.L515
	mov	eax, eax
	jmp	.L516
	.p2align 5
.L517:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
.L516:
	cmp	eax, r8d
	jb	.L517
.L511:
	ret
	.p2align 5
.L519:
	mov	eax, r8d
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
.L513:
	sub	r8d, 1
	cmp	r8d, -1
	jne	.L519
	jmp	.L511
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
	js	.L529
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
.L530:
	ret
.L529:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rax
	addsd	xmm0, xmm0
	jmp	.L530
	.seh_endproc
	.globl	__ulltof
	.def	__ulltof;	.scl	2;	.type	32;	.endef
	.seh_proc	__ulltof
__ulltof:
	.seh_endprologue
	test	rcx, rcx
	js	.L532
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
.L533:
	ret
.L532:
	mov	rax, rcx
	shr	rax
	and	ecx, 1
	or	rax, rcx
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rax
	addss	xmm0, xmm0
	jmp	.L533
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
.L536:
	cmp	eax, 16
	je	.L537
	mov	edx, r8d
	sub	edx, eax
	bt	ecx, edx
	jc	.L537
	add	eax, 1
	jmp	.L536
.L537:
	ret
	.seh_endproc
	.globl	__ctzhi2
	.def	__ctzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzhi2
__ctzhi2:
	.seh_endprologue
	mov	eax, 0
	movzx	ecx, cx
.L540:
	cmp	eax, 16
	je	.L541
	bt	ecx, eax
	jc	.L541
	add	eax, 1
	jmp	.L540
.L541:
	ret
	.seh_endproc
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC15[rip]
	jnb	.L549
	cvttss2si	eax, xmm0
.L546:
	ret
.L549:
	subss	xmm0, DWORD PTR .LC15[rip]
	cvttss2si	eax, xmm0
	add	eax, 32768
	jmp	.L546
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
	jmp	.L551
	.p2align 5
.L553:
	mov	edx, r8d
	sar	edx, cl
	and	edx, 1
	cmp	edx, 1
	sbb	eax, -1
	add	ecx, 1
.L551:
	cmp	ecx, 16
	jne	.L553
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
	jmp	.L555
	.p2align 5
.L557:
	mov	eax, r8d
	sar	eax, cl
	and	eax, 1
	cmp	eax, 1
	sbb	edx, -1
	add	ecx, 1
.L555:
	cmp	ecx, 16
	jne	.L557
	mov	eax, edx
	ret
	.seh_endproc
	.globl	__mulsi3_iq2000
	.def	__mulsi3_iq2000;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_iq2000
__mulsi3_iq2000:
	.seh_endprologue
	mov	eax, 0
	jmp	.L559
	.p2align 5
.L561:
	lea	r8d, [rax+rdx]
	test	cl, 1
	cmovne	eax, r8d
	shr	ecx
	add	edx, edx
.L559:
	test	ecx, ecx
	jne	.L561
	ret
	.seh_endproc
	.globl	__mulsi3_lm32
	.def	__mulsi3_lm32;	.scl	2;	.type	32;	.endef
	.seh_proc	__mulsi3_lm32
__mulsi3_lm32:
	.seh_endprologue
	mov	eax, 0
	test	ecx, ecx
	jne	.L564
	jmp	.L563
	.p2align 5
.L566:
	lea	r8d, [rax+rcx]
	test	dl, 1
	cmovne	eax, r8d
	add	ecx, ecx
	shr	edx
.L564:
	test	edx, edx
	jne	.L566
.L563:
	ret
	.seh_endproc
	.globl	__udivmodsi4
	.def	__udivmodsi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4
__udivmodsi4:
	.seh_endprologue
	mov	r9d, 1
	jmp	.L569
	.p2align 5
.L572:
	add	edx, edx
	add	r9d, r9d
.L569:
	cmp	edx, ecx
	setb	r10b
	test	r9d, r9d
	setne	al
	test	r10b, al
	je	.L578
	test	edx, edx
	jns	.L572
	mov	eax, 0
	jmp	.L571
.L578:
	mov	eax, 0
	jmp	.L571
	.p2align 4
.L574:
	shr	r9d
	shr	edx
.L571:
	test	r9d, r9d
	je	.L579
	cmp	ecx, edx
	jb	.L574
	sub	ecx, edx
	or	eax, r9d
	jmp	.L574
.L579:
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
	ja	.L581
	comiss	xmm0, xmm1
	seta	al
	movzx	eax, al
.L581:
	ret
	.seh_endproc
	.globl	__mspabi_cmpd
	.def	__mspabi_cmpd;	.scl	2;	.type	32;	.endef
	.seh_proc	__mspabi_cmpd
__mspabi_cmpd:
	.seh_endprologue
	mov	eax, -1
	comisd	xmm1, xmm0
	ja	.L585
	comisd	xmm0, xmm1
	seta	al
	movzx	eax, al
.L585:
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
	js	.L598
.L591:
	mov	r8d, 0
	mov	eax, 0
	jmp	.L592
.L598:
	neg	edx
	mov	r11d, 1
	jmp	.L591
	.p2align 6
.L594:
	lea	r9d, [r8+rcx]
	test	dl, 1
	cmovne	r8d, r9d
	add	ecx, ecx
	sar	edx
	add	eax, 1
.L592:
	test	edx, edx
	setne	r9b
	cmp	al, 31
	setbe	r10b
	test	r10b, r9b
	jne	.L594
	mov	eax, r8d
	neg	eax
	test	r11d, r11d
	cmove	eax, r8d
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
	js	.L604
.L600:
	test	edx, edx
	js	.L605
.L601:
	mov	r8d, 0
	call	__udivmodsi4
	mov	edx, eax
	neg	edx
	test	ebx, ebx
	cmovne	eax, edx
	add	rsp, 32
	pop	rbx
	ret
.L604:
	neg	ecx
	mov	ebx, 1
	jmp	.L600
.L605:
	neg	edx
	xor	ebx, 1
	jmp	.L601
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
	js	.L611
.L607:
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
.L611:
	neg	ecx
	mov	ebx, 1
	jmp	.L607
	.seh_endproc
	.globl	__udivmodhi4
	.def	__udivmodhi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodhi4
__udivmodhi4:
	.seh_endprologue
	mov	r9d, 1
	jmp	.L613
	.p2align 5
.L616:
	add	edx, edx
	add	r9d, r9d
.L613:
	cmp	dx, cx
	setb	r10b
	test	r9w, r9w
	setne	al
	test	r10b, al
	je	.L622
	test	dx, dx
	jns	.L616
	mov	eax, 0
	jmp	.L615
.L622:
	mov	eax, 0
	jmp	.L615
	.p2align 5
.L618:
	shr	r9w
	shr	dx
.L615:
	test	r9w, r9w
	je	.L623
	cmp	cx, dx
	jb	.L618
	sub	ecx, edx
	or	eax, r9d
	jmp	.L618
.L623:
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
	jmp	.L625
	.p2align 5
.L628:
	add	edx, edx
	add	r9d, r9d
.L625:
	cmp	edx, ecx
	setb	r10b
	test	r9d, r9d
	setne	al
	test	r10b, al
	je	.L634
	test	edx, edx
	jns	.L628
	mov	eax, 0
	jmp	.L627
.L634:
	mov	eax, 0
	jmp	.L627
	.p2align 4
.L630:
	shr	r9d
	shr	edx
.L627:
	test	r9d, r9d
	je	.L635
	cmp	ecx, edx
	jb	.L630
	sub	ecx, edx
	or	eax, r9d
	jmp	.L630
.L635:
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
	je	.L637
	lea	ecx, -32[rdx]
	sal	r8d, cl
	mov	rax, r8
	sal	rax, 32
.L639:
	ret
.L637:
	mov	rax, rcx
	test	edx, edx
	je	.L639
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
	jmp	.L639
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
	je	.L642
	mov	r10d, 0
	lea	ecx, -64[rdx]
	sal	r8, cl
	mov	r11, r8
.L643:
	mov	rcx, r10
	mov	rax, r11
.L644:
	mov	QWORD PTR [rsp], rcx
	mov	rdx, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rax
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
.L642:
	test	edx, edx
	je	.L644
	mov	r10, rcx
	mov	ecx, edx
	sal	r10, cl
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	r8, cl
	or	r8, r9
	mov	r11, r8
	jmp	.L643
	.seh_endproc
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L647
	sar	r8, 32
	mov	eax, r8d
	sar	eax, 31
	lea	ecx, -32[rdx]
	sar	r8d, cl
	sal	rax, 32
	or	rax, r8
.L649:
	ret
.L647:
	mov	rax, rcx
	test	edx, edx
	je	.L649
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
	jmp	.L649
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
	je	.L652
	sar	rcx, 63
	mov	r12, rcx
	lea	ecx, -64[rdx]
	sar	rax, cl
	mov	r11, rax
.L653:
	mov	r8, r11
	mov	rcx, r12
.L654:
	mov	QWORD PTR [rsp], r8
	mov	rax, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rax
	mov	QWORD PTR 8[rsp], rcx
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 16
	pop	r12
	ret
.L652:
	test	edx, edx
	je	.L654
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
	jmp	.L653
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
	cmp	ecx, 65536
	setb	al
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
	jl	.L669
	mov	r9, rcx
	sar	r9, 32
	mov	r8, rdx
	sar	r8, 32
	mov	eax, 2
	cmp	r9d, r8d
	jg	.L669
	mov	eax, 0
	cmp	ecx, edx
	jb	.L669
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L669:
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
	jl	.L676
	mov	ecx, 2
	jg	.L676
	mov	ecx, 0
	cmp	r8, r9
	jb	.L676
	cmp	r9, r8
	setb	cl
	movzx	ecx, cl
	add	ecx, 1
.L676:
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
	jne	.L692
	xor	eax, eax
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	mov	edx, 0
	cmove	eax, edx
.L693:
	ret
.L692:
	rep bsf	rax, rax
	add	eax, 1
	jmp	.L693
	.seh_endproc
	.globl	__lshrdi3
	.def	__lshrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__lshrdi3
__lshrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L696
	shr	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	shr	eax, cl
.L698:
	ret
.L696:
	mov	rax, rcx
	test	edx, edx
	je	.L698
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
	jmp	.L698
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
	je	.L701
	lea	ecx, -64[rdx]
	shr	r8, cl
	mov	r10, r8
	mov	r11d, 0
.L702:
	mov	rcx, r10
	mov	rax, r11
.L703:
	mov	QWORD PTR [rsp], rcx
	mov	rdx, QWORD PTR [rsp]
	mov	QWORD PTR [rsp], rdx
	mov	QWORD PTR 8[rsp], rax
	movdqa	xmm0, XMMWORD PTR [rsp]
	add	rsp, 24
	ret
.L701:
	test	edx, edx
	je	.L703
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
	jmp	.L702
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
	jmp	.L720
	.p2align 5
.L718:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L719
	mulsd	xmm0, xmm0
.L720:
	test	dl, 1
	je	.L718
	mulsd	xmm1, xmm0
	jmp	.L718
.L719:
	movapd	xmm0, xmm1
	test	ecx, ecx
	je	.L721
	movsd	xmm0, QWORD PTR .LC14[rip]
	divsd	xmm0, xmm1
.L721:
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
	jmp	.L726
	.p2align 5
.L724:
	mov	eax, edx
	shr	eax, 31
	add	eax, edx
	sar	eax
	mov	edx, eax
	je	.L725
	mulss	xmm0, xmm0
.L726:
	test	dl, 1
	je	.L724
	mulss	xmm1, xmm0
	jmp	.L724
.L725:
	movaps	xmm0, xmm1
	test	ecx, ecx
	je	.L727
	movss	xmm0, DWORD PTR .LC16[rip]
	divss	xmm0, xmm1
.L727:
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
	jb	.L730
	mov	r8, r9
	mov	r9, rdx
	shr	r9, 32
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L730
	mov	eax, 0
	cmp	ecx, edx
	jb	.L730
	cmp	edx, ecx
	setb	al
	movzx	eax, al
	add	eax, 1
.L730:
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
	jb	.L737
	mov	ecx, 2
	cmp	rdx, rax
	jb	.L737
	mov	ecx, 0
	cmp	r8, r9
	jb	.L737
	cmp	r9, r8
	setb	cl
	movzx	ecx, cl
	add	ecx, 1
.L737:
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
