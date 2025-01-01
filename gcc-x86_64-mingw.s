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
	.seh_endprologue
	mov	rax, rcx
	cmp	rdx, rcx
	jnb	.L5
	test	r8, r8
	je	.L6
	.p2align 5
	.p2align 4
	.p2align 3
.L7:
	movzx	ecx, BYTE PTR -1[rdx+r8]
	mov	BYTE PTR -1[rax+r8], cl
	sub	r8, 1
	jne	.L7
.L6:
	ret
	.p2align 4,,10
	.p2align 3
.L5:
	cmp	rcx, rdx
	je	.L6
	test	r8, r8
	je	.L6
	xor	r9d, r9d
	.p2align 5
	.p2align 4
	.p2align 3
.L8:
	movzx	ecx, BYTE PTR [rdx+r9]
	mov	BYTE PTR [rax+r9], cl
	add	r9, 1
	cmp	r9, r8
	jne	.L8
	ret
	.seh_endproc
	.p2align 4
	.globl	memccpy
	.def	memccpy;	.scl	2;	.type	32;	.endef
	.seh_proc	memccpy
memccpy:
	.seh_endprologue
	movzx	r8d, r8b
	test	r9, r9
	jne	.L18
	jmp	.L19
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L20:
	add	rdx, 1
	add	rcx, 1
	sub	r9, 1
	je	.L19
.L18:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [rcx], r10b
	cmp	r10d, r8d
	jne	.L20
	lea	rax, 1[rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L19:
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
	jne	.L29
	jmp	.L32
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L31:
	add	rcx, 1
	sub	r8, 1
	je	.L32
.L29:
	movzx	eax, BYTE PTR [rcx]
	cmp	eax, edx
	jne	.L31
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L32:
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
	jne	.L35
	jmp	.L39
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L37:
	add	rcx, 1
	add	rdx, 1
	sub	r8, 1
	je	.L39
.L35:
	movzx	eax, BYTE PTR [rdx]
	cmp	BYTE PTR [rcx], al
	je	.L37
	movzx	eax, BYTE PTR [rcx]
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L39:
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
	je	.L43
	call	memcpy
	mov	rcx, rax
.L43:
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
	jmp	.L48
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L50:
	mov	r8, rax
	sub	rax, 1
	movzx	r9d, BYTE PTR [r8]
	cmp	r9d, edx
	je	.L47
.L48:
	cmp	rax, rcx
	jne	.L50
	xor	r8d, r8d
.L47:
	mov	rax, r8
	ret
	.seh_endproc
	.p2align 4
	.globl	memset
	.def	memset;	.scl	2;	.type	32;	.endef
	.seh_proc	memset
memset:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L52
	lea	rcx, [rcx+r8]
	and	r8d, 1
	mov	r9, rax
	je	.L53
	lea	r9, 1[rax]
	mov	BYTE PTR [rax], dl
	cmp	rcx, r9
	je	.L52
	.p2align 4
	.p2align 4
	.p2align 3
.L53:
	mov	BYTE PTR [r9], dl
	add	r9, 2
	mov	BYTE PTR -1[r9], dl
	cmp	rcx, r9
	jne	.L53
.L52:
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
	je	.L64
	.p2align 5
	.p2align 4
	.p2align 3
.L65:
	movzx	ecx, BYTE PTR 1[rdx]
	add	rdx, 1
	add	rax, 1
	mov	BYTE PTR [rax], cl
	test	cl, cl
	jne	.L65
.L64:
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
	jne	.L71
	jmp	.L70
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L73:
	movzx	r8d, BYTE PTR 1[rax]
	add	rax, 1
	test	r8b, r8b
	je	.L70
.L71:
	cmp	r8d, edx
	jne	.L73
.L70:
	ret
	.seh_endproc
	.p2align 4
	.globl	strchr
	.def	strchr;	.scl	2;	.type	32;	.endef
	.seh_proc	strchr
strchr:
	.seh_endprologue
	mov	rax, rcx
	jmp	.L79
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L82:
	add	rax, 1
	test	r8b, r8b
	je	.L81
.L79:
	movsx	r8d, BYTE PTR [rax]
	cmp	r8d, edx
	jne	.L82
	ret
	.p2align 4,,10
	.p2align 3
.L81:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	strcmp
	.def	strcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strcmp
strcmp:
	.seh_endprologue
	movzx	eax, BYTE PTR [rcx]
	movzx	r9d, BYTE PTR [rdx]
	test	al, al
	je	.L84
	cmp	al, r9b
	jne	.L84
	mov	r8d, 1
	jmp	.L85
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L97:
	cmp	al, r9b
	jne	.L84
.L85:
	movzx	eax, BYTE PTR [rcx+r8]
	movzx	r9d, BYTE PTR [rdx+r8]
	add	r8, 1
	test	al, al
	jne	.L97
.L84:
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
	mov	rax, rcx
	je	.L99
	.p2align 4
	.p2align 4
	.p2align 3
.L100:
	add	rax, 1
	cmp	BYTE PTR [rax], 0
	jne	.L100
.L99:
	sub	rax, rcx
	ret
	.seh_endproc
	.p2align 4
	.globl	strncmp
	.def	strncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	strncmp
strncmp:
	.seh_endprologue
	xor	eax, eax
	test	r8, r8
	je	.L103
	movzx	eax, BYTE PTR [rcx]
	test	al, al
	je	.L105
	lea	r10, -1[rdx+r8]
	jmp	.L106
	.p2align 4,,10
	.p2align 3
.L118:
	cmp	rdx, r10
	je	.L105
	movzx	eax, BYTE PTR 1[rcx]
	add	rcx, 1
	add	rdx, 1
	test	al, al
	je	.L105
.L106:
	movzx	r8d, BYTE PTR [rdx]
	test	r8b, r8b
	setne	r9b
	cmp	r8b, al
	sete	r8b
	test	r9b, r8b
	jne	.L118
.L105:
	movzx	edx, BYTE PTR [rdx]
	sub	eax, edx
.L103:
	ret
	.seh_endproc
	.p2align 4
	.globl	swab
	.def	swab;	.scl	2;	.type	32;	.endef
	.seh_proc	swab
swab:
	.seh_endprologue
	cmp	r8, 1
	jle	.L119
	and	r8, -2
	add	r8, rcx
	.p2align 5
	.p2align 4
	.p2align 3
.L121:
	movzx	eax, BYTE PTR 1[rcx]
	add	rcx, 2
	add	rdx, 2
	mov	BYTE PTR -2[rdx], al
	movzx	eax, BYTE PTR -2[rcx]
	mov	BYTE PTR -1[rdx], al
	cmp	rcx, r8
	jne	.L121
.L119:
	ret
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
	jbe	.L135
	cmp	cx, 31
	jbe	.L135
	lea	ecx, -8232[rax]
	mov	edx, 1
	cmp	ecx, 1
	jbe	.L133
	sub	eax, 65529
	xor	edx, edx
	cmp	eax, 2
	setbe	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L135:
	mov	edx, 1
.L133:
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
	jbe	.L144
	movzx	eax, cx
	lea	edx, -8234[rax]
	cmp	edx, 47061
	jbe	.L141
	cmp	cx, 8231
	jbe	.L141
	lea	r8d, -57344[rax]
	mov	edx, 1
	cmp	r8d, 8184
	jbe	.L138
	sub	eax, 65532
	xor	edx, edx
	cmp	eax, 1048579
	ja	.L138
	not	ecx
	xor	edx, edx
	test	cx, -2
	setne	dl
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L141:
	mov	edx, 1
.L138:
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L144:
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
	jbe	.L145
	or	ecx, 32
	xor	edx, edx
	movzx	ecx, cx
	sub	ecx, 97
	cmp	ecx, 5
	setbe	dl
.L145:
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
	jp	.L149
	ucomisd	xmm1, xmm1
	jp	.L153
	comisd	xmm0, xmm1
	jbe	.L156
	subsd	xmm0, xmm1
.L149:
	ret
	.p2align 4,,10
	.p2align 3
.L156:
	pxor	xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L153:
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
	jp	.L157
	ucomiss	xmm1, xmm1
	jp	.L161
	comiss	xmm0, xmm1
	jbe	.L164
	subss	xmm0, xmm1
.L157:
	ret
	.p2align 4,,10
	.p2align 3
.L164:
	pxor	xmm0, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L161:
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
	jp	.L165
	ucomisd	xmm1, xmm1
	jp	.L171
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L167
	test	eax, eax
	jne	.L165
.L171:
	movapd	xmm1, xmm0
.L165:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L167:
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
	jp	.L174
	ucomiss	xmm1, xmm1
	jp	.L180
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L176
	test	eax, eax
	jne	.L174
.L180:
	movaps	xmm1, xmm0
.L174:
	movaps	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L176:
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
	jp	.L189
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L192
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
	je	.L185
	test	edx, edx
	fcmove	st, st(1)
	fstp	st(1)
	jmp	.L184
	.p2align 4,,10
	.p2align 3
.L192:
	fstp	st(0)
.L184:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L185:
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L189:
	fstp	st(0)
	jmp	.L184
	.seh_endproc
	.p2align 4
	.globl	fmin
	.def	fmin;	.scl	2;	.type	32;	.endef
	.seh_proc	fmin
fmin:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	movapd	xmm2, xmm0
	jp	.L198
	ucomisd	xmm1, xmm1
	jp	.L193
	movmskpd	eax, xmm0
	movmskpd	edx, xmm1
	and	eax, 1
	and	edx, 1
	cmp	eax, edx
	je	.L195
	test	eax, eax
	jne	.L193
.L198:
	movapd	xmm0, xmm1
.L193:
	ret
	.p2align 4,,10
	.p2align 3
.L195:
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
	jp	.L207
	ucomiss	xmm1, xmm1
	jp	.L202
	movd	eax, xmm0
	movd	edx, xmm1
	and	eax, -2147483648
	and	edx, -2147483648
	cmp	eax, edx
	je	.L204
	test	eax, eax
	jne	.L202
.L207:
	movaps	xmm0, xmm1
.L202:
	ret
	.p2align 4,,10
	.p2align 3
.L204:
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
	jp	.L220
	fxch	st(1)
	fucomi	st, st(0)
	jp	.L217
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
	je	.L213
	test	edx, edx
	fcmovne	st, st(1)
	fstp	st(1)
	jmp	.L212
	.p2align 4,,10
	.p2align 3
.L220:
	fstp	st(0)
.L212:
	fstp	TBYTE PTR [rcx]
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L213:
	fcomi	st, st(1)
	mov	rax, rcx
	fcmovnbe	st, st(1)
	fstp	st(1)
	fstp	TBYTE PTR [rcx]
	ret
	.p2align 4,,10
	.p2align 3
.L217:
	fstp	st(0)
	jmp	.L212
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
	je	.L222
	lea	r8, digits[rip]
	.p2align 5
	.p2align 4
	.p2align 3
.L223:
	mov	edx, ecx
	add	rax, 1
	and	edx, 63
	movzx	edx, BYTE PTR [r8+rdx]
	mov	BYTE PTR -1[rax], dl
	shr	ecx, 6
	jne	.L223
.L222:
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
	je	.L234
	mov	rax, QWORD PTR [rdx]
	mov	QWORD PTR 8[rcx], rdx
	mov	QWORD PTR [rcx], rax
	mov	QWORD PTR [rdx], rcx
	mov	rax, QWORD PTR [rcx]
	test	rax, rax
	je	.L228
	mov	QWORD PTR 8[rax], rcx
.L228:
	ret
	.p2align 4,,10
	.p2align 3
.L234:
	mov	QWORD PTR 8[rcx], 0
	mov	QWORD PTR [rcx], 0
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
	je	.L236
	mov	rdx, QWORD PTR 8[rcx]
	mov	QWORD PTR 8[rax], rdx
.L236:
	mov	rdx, QWORD PTR 8[rcx]
	test	rdx, rdx
	je	.L235
	mov	QWORD PTR [rdx], rax
.L235:
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
	je	.L245
	mov	rbx, rdx
	xor	r15d, r15d
	jmp	.L247
	.p2align 4,,10
	.p2align 3
.L259:
	add	r15, 1
	add	rbx, rsi
	cmp	rdi, r15
	je	.L245
.L247:
	mov	r12, rbx
	mov	rdx, rbx
	mov	rcx, rbp
	call	r13
	test	eax, eax
	jne	.L259
.L244:
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
.L245:
	lea	rax, 1[rdi]
	imul	rdi, rsi
	add	rdi, QWORD PTR 120[rsp]
	mov	QWORD PTR [r14], rax
	mov	r12, rdi
	test	rsi, rsi
	je	.L244
	mov	r8, rsi
	mov	rdx, rbp
	mov	rcx, rdi
	call	memmove
	jmp	.L244
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
	je	.L261
	mov	rbx, rdx
	xor	esi, esi
	jmp	.L263
	.p2align 4,,10
	.p2align 3
.L271:
	add	rsi, 1
	add	rbx, rbp
	cmp	r12, rsi
	je	.L261
.L263:
	mov	r14, rbx
	mov	rdx, rbx
	mov	rcx, rdi
	call	r13
	test	eax, eax
	jne	.L271
.L260:
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
.L261:
	xor	r14d, r14d
	jmp	.L260
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
	jmp	.L296
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L291:
	add	rcx, 1
.L296:
	movsx	eax, BYTE PTR [rcx]
	mov	edx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	.L291
	cmp	dl, 32
	je	.L291
	cmp	dl, 43
	je	.L277
	cmp	dl, 45
	jne	.L298
	movsx	eax, BYTE PTR 1[rcx]
	lea	r8, 1[rcx]
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	ja	.L286
	mov	r9d, 1
.L280:
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L283:
	movsx	ecx, BYTE PTR 1[r8]
	lea	eax, [rax+rax*4]
	sub	edx, 48
	add	r8, 1
	movsx	edx, dl
	add	eax, eax
	sub	eax, edx
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L283
	test	r9d, r9d
	je	.L281
	ret
	.p2align 4,,10
	.p2align 3
.L298:
	movsx	eax, BYTE PTR [rcx]
	mov	r8, rcx
	xor	r9d, r9d
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L280
	xor	eax, eax
.L281:
	neg	eax
	ret
	.p2align 4,,10
	.p2align 3
.L277:
	movsx	eax, BYTE PTR 1[rcx]
	lea	r8, 1[rcx]
	xor	r9d, r9d
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L280
	xor	eax, eax
	jmp	.L281
.L286:
	xor	eax, eax
	ret
	.seh_endproc
	.p2align 4
	.globl	atol
	.def	atol;	.scl	2;	.type	32;	.endef
	.seh_proc	atol
atol:
	.seh_endprologue
	jmp	atoi
	.seh_endproc
	.p2align 4
	.globl	atoll
	.def	atoll;	.scl	2;	.type	32;	.endef
	.seh_proc	atoll
atoll:
	.seh_endprologue
	jmp	.L323
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L318:
	add	rcx, 1
.L323:
	movsx	eax, BYTE PTR [rcx]
	mov	edx, eax
	sub	eax, 9
	cmp	eax, 4
	jbe	.L318
	cmp	dl, 32
	je	.L318
	cmp	dl, 43
	je	.L304
	cmp	dl, 45
	jne	.L325
	movsx	eax, BYTE PTR 1[rcx]
	lea	r8, 1[rcx]
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	ja	.L313
	mov	r9d, 1
.L307:
	xor	eax, eax
	.p2align 6
	.p2align 4
	.p2align 3
.L310:
	movsx	ecx, BYTE PTR 1[r8]
	lea	rax, [rax+rax*4]
	sub	edx, 48
	add	r8, 1
	movsx	rdx, dl
	add	rax, rax
	sub	rax, rdx
	mov	edx, ecx
	sub	ecx, 48
	cmp	ecx, 9
	jbe	.L310
	test	r9d, r9d
	jne	.L300
.L308:
	neg	rax
.L300:
	ret
	.p2align 4,,10
	.p2align 3
.L325:
	movsx	eax, BYTE PTR [rcx]
	mov	r8, rcx
	xor	r9d, r9d
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L307
	xor	eax, eax
	jmp	.L308
	.p2align 4,,10
	.p2align 3
.L304:
	movsx	eax, BYTE PTR 1[rcx]
	lea	r8, 1[rcx]
	xor	r9d, r9d
	mov	edx, eax
	sub	eax, 48
	cmp	eax, 9
	jbe	.L307
	xor	eax, eax
	jmp	.L308
.L313:
	xor	eax, eax
	ret
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
.L336:
	test	rbx, rbx
	je	.L327
.L337:
	mov	r14, rbx
	mov	rcx, r12
	shr	r14
	mov	rsi, r14
	imul	rsi, rdi
	add	rsi, rbp
	mov	rdx, rsi
	call	r13
	test	eax, eax
	js	.L331
	jle	.L326
	sub	rbx, 1
	lea	rbp, [rsi+rdi]
	sub	rbx, r14
	test	rbx, rbx
	jne	.L337
.L327:
	xor	esi, esi
.L326:
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
.L331:
	mov	rbx, r14
	jmp	.L336
	.seh_endproc
	.p2align 4
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
	mov	r13, QWORD PTR 128[rsp]
	mov	r12, QWORD PTR 136[rsp]
	mov	rbp, rcx
	mov	rdi, rdx
	mov	rsi, r9
	mov	r14d, r8d
	test	r8d, r8d
	jne	.L342
	jmp	.L339
	.p2align 4,,10
	.p2align 3
.L347:
	jle	.L341
	lea	rdi, [rbx+rsi]
	sub	r14d, 1
.L341:
	sar	r14d
	je	.L339
.L342:
	mov	ebx, r14d
	mov	r8, r12
	mov	rcx, rbp
	sar	ebx
	movsx	rbx, ebx
	imul	rbx, rsi
	add	rbx, rdi
	mov	rdx, rbx
	call	r13
	test	eax, eax
	jne	.L347
.L338:
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
	.p2align 4,,10
	.p2align 3
.L339:
	xor	ebx, ebx
	jmp	.L338
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
	mov	rax, rcx
	movzx	ecx, WORD PTR [rcx]
	mov	r8d, edx
	cmp	cx, dx
	jne	.L370
	jmp	.L356
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L371:
	movzx	ecx, WORD PTR 2[rax]
	add	rax, 2
	cmp	cx, r8w
	je	.L356
.L370:
	test	cx, cx
	jne	.L371
.L356:
	xor	edx, edx
	test	cx, cx
	cmove	rax, rdx
	ret
	.seh_endproc
	.p2align 4
	.globl	wcscmp
	.def	wcscmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcscmp
wcscmp:
	.seh_endprologue
	movzx	r8d, WORD PTR [rcx]
	movzx	r9d, WORD PTR [rdx]
	test	r8w, r8w
	setne	r10b
	cmp	r8w, r9w
	sete	al
	test	r10b, al
	je	.L373
	test	r9w, r9w
	je	.L373
	mov	eax, 2
	jmp	.L374
	.p2align 6
	.p2align 4,,10
	.p2align 3
.L388:
	test	r9w, r9w
	je	.L373
.L374:
	movzx	r8d, WORD PTR [rcx+rax]
	movzx	r9d, WORD PTR [rdx+rax]
	add	rax, 2
	test	r8w, r8w
	setne	r11b
	cmp	r8w, r9w
	sete	r10b
	test	r11b, r10b
	jne	.L388
.L373:
	mov	eax, -1
	cmp	r8w, r9w
	jb	.L372
	xor	eax, eax
	cmp	r9w, r8w
	setb	al
.L372:
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
.L390:
	movzx	r9d, WORD PTR [rdx+r8]
	mov	WORD PTR [rax+r8], r9w
	add	r8, 2
	test	r9w, r9w
	jne	.L390
	ret
	.seh_endproc
	.p2align 4
	.globl	wcslen
	.def	wcslen;	.scl	2;	.type	32;	.endef
	.seh_proc	wcslen
wcslen:
	.seh_endprologue
	cmp	WORD PTR [rcx], 0
	mov	rax, rcx
	je	.L393
	.p2align 4
	.p2align 4
	.p2align 3
.L394:
	add	rax, 2
	cmp	WORD PTR [rax], 0
	jne	.L394
.L393:
	sub	rax, rcx
	sar	rax
	ret
	.seh_endproc
	.p2align 4
	.globl	wcsncmp
	.def	wcsncmp;	.scl	2;	.type	32;	.endef
	.seh_proc	wcsncmp
wcsncmp:
	.seh_endprologue
	test	r8, r8
	jne	.L398
	jmp	.L404
	.p2align 4,,10
	.p2align 3
.L409:
	test	r9w, r9w
	je	.L402
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L404
.L398:
	movzx	eax, WORD PTR [rcx]
	movzx	r9d, WORD PTR [rdx]
	test	ax, ax
	setne	r10b
	cmp	ax, r9w
	sete	al
	test	r10b, al
	jne	.L409
.L402:
	movzx	ecx, WORD PTR [rcx]
	movzx	eax, WORD PTR [rdx]
	cmp	cx, ax
	jb	.L410
	cmp	ax, cx
	setb	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L410:
	mov	eax, -1
	ret
	.p2align 4,,10
	.p2align 3
.L404:
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
	jne	.L412
	jmp	.L415
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L414:
	add	rcx, 2
	sub	r8, 1
	je	.L415
.L412:
	cmp	WORD PTR [rcx], dx
	jne	.L414
	mov	rax, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L415:
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
	jne	.L418
	jmp	.L423
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L420:
	add	rcx, 2
	add	rdx, 2
	sub	r8, 1
	je	.L423
.L418:
	movzx	eax, WORD PTR [rcx]
	cmp	ax, WORD PTR [rdx]
	je	.L420
	movzx	edx, WORD PTR [rdx]
	cmp	ax, dx
	jb	.L426
	cmp	dx, ax
	setb	al
	movzx	eax, al
	ret
	.p2align 4,,10
	.p2align 3
.L423:
	xor	eax, eax
	ret
	.p2align 4,,10
	.p2align 3
.L426:
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
	je	.L428
	add	r8, r8
	call	memcpy
	mov	rcx, rax
.L428:
	mov	rax, rcx
	add	rsp, 40
	ret
	.seh_endproc
	.p2align 4
	.globl	wmemmove
	.def	wmemmove;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemmove
wmemmove:
	.seh_endprologue
	mov	rax, rcx
	cmp	rcx, rdx
	je	.L433
	mov	r9, rcx
	lea	rcx, [r8+r8]
	sub	r9, rdx
	cmp	r9, rcx
	jnb	.L444
	test	r8, r8
	je	.L433
	sub	r8, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L436:
	movzx	ecx, WORD PTR [rdx+r8*2]
	mov	WORD PTR [rax+r8*2], cx
	sub	r8, 1
	jnb	.L436
.L433:
	ret
	.p2align 4,,10
	.p2align 3
.L444:
	xor	r9d, r9d
	test	r8, r8
	je	.L433
	.p2align 5
	.p2align 4
	.p2align 3
.L435:
	movzx	ecx, WORD PTR [rdx+r9*2]
	mov	WORD PTR [rax+r9*2], cx
	add	r9, 1
	cmp	r9, r8
	jne	.L435
	ret
	.seh_endproc
	.p2align 4
	.globl	wmemset
	.def	wmemset;	.scl	2;	.type	32;	.endef
	.seh_proc	wmemset
wmemset:
	.seh_endprologue
	mov	rax, rcx
	mov	ecx, edx
	test	r8, r8
	je	.L446
	xor	r9d, r9d
	test	r8b, 1
	je	.L447
	mov	r9d, 1
	mov	WORD PTR [rax], dx
	cmp	r9, r8
	je	.L446
	.p2align 5
	.p2align 4
	.p2align 3
.L447:
	mov	WORD PTR [rax+r9*2], cx
	mov	WORD PTR 2[rax+r9*2], cx
	add	r9, 2
	cmp	r9, r8
	jne	.L447
.L446:
	ret
	.seh_endproc
	.p2align 4
	.globl	bcopy
	.def	bcopy;	.scl	2;	.type	32;	.endef
	.seh_proc	bcopy
bcopy:
	.seh_endprologue
	cmp	rcx, rdx
	jnb	.L458
	test	r8, r8
	je	.L457
	.p2align 5
	.p2align 4
	.p2align 3
.L460:
	movzx	eax, BYTE PTR -1[rcx+r8]
	mov	BYTE PTR -1[rdx+r8], al
	sub	r8, 1
	jne	.L460
.L457:
	ret
	.p2align 4,,10
	.p2align 3
.L458:
	je	.L457
	test	r8, r8
	je	.L457
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L461:
	movzx	r9d, BYTE PTR [rcx+rax]
	mov	BYTE PTR [rdx+rax], r9b
	add	rax, 1
	cmp	rax, r8
	jne	.L461
	ret
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
	jmp	.L486
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L484:
	cmp	ecx, 32
	je	.L488
.L486:
	mov	eax, edx
	shr	eax, cl
	add	ecx, 1
	test	al, 1
	je	.L484
	mov	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L488:
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
	je	.L489
	mov	eax, ecx
	and	eax, 1
	jne	.L489
	mov	eax, 1
	.p2align 4
	.p2align 4
	.p2align 3
.L491:
	sar	ecx
	add	eax, 1
	test	cl, 1
	je	.L491
.L489:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinff
	.def	gl_isinff;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinff
gl_isinff:
	.seh_endprologue
	movss	xmm1, DWORD PTR .LC3[rip]
	mov	eax, 1
	comiss	xmm1, xmm0
	ja	.L496
	xor	eax, eax
	comiss	xmm0, DWORD PTR .LC4[rip]
	seta	al
.L496:
	ret
	.seh_endproc
	.p2align 4
	.globl	gl_isinfd
	.def	gl_isinfd;	.scl	2;	.type	32;	.endef
	.seh_proc	gl_isinfd
gl_isinfd:
	.seh_endprologue
	movsd	xmm1, QWORD PTR .LC5[rip]
	mov	eax, 1
	comisd	xmm1, xmm0
	ja	.L499
	xor	eax, eax
	comisd	xmm0, QWORD PTR .LC6[rip]
	seta	al
.L499:
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
	fld	TBYTE PTR .LC7[rip]
	fcomip	st, st(1)
	ja	.L505
	fld	TBYTE PTR .LC8[rip]
	fxch	st(1)
	xor	eax, eax
	fcomip	st, st(1)
	fstp	st(0)
	seta	al
	jmp	.L502
	.p2align 4,,10
	.p2align 3
.L505:
	fstp	st(0)
.L502:
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
	jp	.L508
	movaps	xmm1, xmm0
	addss	xmm1, xmm0
	ucomiss	xmm1, xmm0
	jp	.L515
	jne	.L515
.L508:
	ret
	.p2align 4,,10
	.p2align 3
.L515:
	movss	xmm1, DWORD PTR .LC9[rip]
	test	edx, edx
	jns	.L510
	movss	xmm1, DWORD PTR .LC10[rip]
.L510:
	test	dl, 1
	je	.L511
	.p2align 4
	.p2align 3
.L512:
	mulss	xmm0, xmm1
.L511:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L508
	mulss	xmm1, xmm1
	test	dl, 1
	jne	.L512
.L522:
	mulss	xmm1, xmm1
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L512
	jmp	.L522
	.seh_endproc
	.p2align 4
	.globl	ldexp
	.def	ldexp;	.scl	2;	.type	32;	.endef
	.seh_proc	ldexp
ldexp:
	.seh_endprologue
	ucomisd	xmm0, xmm0
	jp	.L524
	movapd	xmm1, xmm0
	addsd	xmm1, xmm0
	ucomisd	xmm1, xmm0
	jp	.L531
	jne	.L531
.L524:
	ret
	.p2align 4,,10
	.p2align 3
.L531:
	movsd	xmm1, QWORD PTR .LC11[rip]
	test	edx, edx
	jns	.L526
	movsd	xmm1, QWORD PTR .LC12[rip]
.L526:
	test	dl, 1
	je	.L527
	.p2align 4
	.p2align 3
.L528:
	mulsd	xmm0, xmm1
.L527:
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	je	.L524
	mulsd	xmm1, xmm1
	test	dl, 1
	jne	.L528
.L538:
	mulsd	xmm1, xmm1
	mov	eax, edx
	shr	eax, 31
	add	edx, eax
	sar	edx
	test	dl, 1
	jne	.L528
	jmp	.L538
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
	jp	.L540
	fld	st(0)
	fadd	st, st(1)
	fucomip	st, st(1)
	jp	.L547
	jne	.L547
	jmp	.L540
	.p2align 4,,10
	.p2align 3
.L556:
	fstp	st(0)
.L540:
	fstp	TBYTE PTR [rax]
	ret
	.p2align 4,,10
	.p2align 3
.L547:
	test	r8d, r8d
	js	.L554
	fld	DWORD PTR .LC9[rip]
.L542:
	test	r8b, 1
	je	.L543
	.p2align 4
	.p2align 3
.L544:
	fmul	st(1), st
.L543:
	mov	edx, r8d
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	je	.L556
	fmul	st, st(0)
	test	r8b, 1
	jne	.L544
.L555:
	mov	edx, r8d
	fmul	st, st(0)
	shr	edx, 31
	add	r8d, edx
	sar	r8d
	test	r8b, 1
	jne	.L544
	jmp	.L555
	.p2align 4,,10
	.p2align 3
.L554:
	fld	DWORD PTR .LC10[rip]
	jmp	.L542
	.seh_endproc
	.p2align 4
	.globl	memxor
	.def	memxor;	.scl	2;	.type	32;	.endef
	.seh_proc	memxor
memxor:
	.seh_endprologue
	mov	rax, rcx
	test	r8, r8
	je	.L558
	add	r8, rdx
	mov	r9, rcx
	.p2align 5
	.p2align 4
	.p2align 3
.L559:
	add	rdx, 1
	add	r9, 1
	movzx	r10d, BYTE PTR -1[rdx]
	xor	BYTE PTR -1[r9], r10b
	cmp	r8, rdx
	jne	.L559
.L558:
	ret
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
	je	.L565
	.p2align 4
	.p2align 4
	.p2align 3
.L566:
	add	r9, 1
	cmp	BYTE PTR [r9], 0
	jne	.L566
.L565:
	test	r8, r8
	jne	.L567
	jmp	.L568
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L569:
	add	rdx, 1
	add	r9, 1
	sub	r8, 1
	je	.L568
.L567:
	movzx	r10d, BYTE PTR [rdx]
	mov	BYTE PTR [r9], r10b
	test	r10b, r10b
	jne	.L569
	ret
	.p2align 4,,10
	.p2align 3
.L568:
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
	je	.L577
.L578:
	cmp	BYTE PTR [rcx+rax], 0
	jne	.L580
.L577:
	ret
	.p2align 4,,10
	.p2align 3
.L580:
	add	rax, 1
	cmp	rdx, rax
	jne	.L578
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
	je	.L590
.L586:
	mov	r8, rdx
	jmp	.L589
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L588:
	add	r8, 1
	cmp	r9b, r10b
	je	.L587
.L589:
	movzx	r9d, BYTE PTR [r8]
	test	r9b, r9b
	jne	.L588
	movzx	r10d, BYTE PTR 1[rax]
	add	rax, 1
	test	r10b, r10b
	jne	.L586
.L590:
	xor	eax, eax
.L587:
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
.L594:
	movsx	r9d, BYTE PTR [rcx]
	cmp	r9d, edx
	cmove	r8, rcx
	add	rcx, 1
	test	r9b, r9b
	jne	.L594
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
	mov	rax, rcx
	test	dl, dl
	je	.L609
	mov	rcx, rsi
	.p2align 4
	.p2align 4
	.p2align 3
.L599:
	add	rcx, 1
	cmp	BYTE PTR [rcx], 0
	jne	.L599
	mov	r8, rax
	sub	rcx, rsi
	je	.L597
	lea	rbx, -1[rsi+rcx]
	jmp	.L606
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L620:
	add	rax, 1
	test	cl, cl
	je	.L619
.L606:
	movzx	ecx, BYTE PTR [rax]
	cmp	cl, dl
	jne	.L620
	mov	r8d, edx
	mov	rcx, rsi
	mov	r9, rax
	jmp	.L601
	.p2align 4,,10
	.p2align 3
.L621:
	test	r10b, r10b
	setne	r11b
	cmp	r10b, r8b
	sete	r10b
	test	r11b, r10b
	je	.L602
	movzx	r8d, BYTE PTR 1[r9]
	add	r9, 1
	add	rcx, 1
	test	r8b, r8b
	je	.L602
.L601:
	movzx	r10d, BYTE PTR [rcx]
	cmp	rcx, rbx
	jne	.L621
.L602:
	cmp	BYTE PTR [rcx], r8b
	je	.L609
	add	rax, 1
	jmp	.L606
	.p2align 4,,10
	.p2align 3
.L619:
	xor	r8d, r8d
.L597:
	mov	rax, r8
	pop	rbx
	pop	rsi
	ret
.L609:
	mov	r8, rax
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
	ja	.L632
	comisd	xmm0, xmm2
	jbe	.L626
	comisd	xmm2, xmm1
	ja	.L625
.L626:
	ret
	.p2align 4,,10
	.p2align 3
.L632:
	comisd	xmm1, xmm2
	jbe	.L626
.L625:
	xorpd	xmm0, XMMWORD PTR .LC13[rip]
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
	mov	r10, rcx
	test	r9, r9
	je	.L633
	cmp	rdx, r9
	jb	.L641
	sub	rdx, r9
	add	rdx, rcx
	jc	.L641
	movzx	r11d, BYTE PTR [r8]
	jmp	.L638
	.p2align 5
	.p2align 4,,10
	.p2align 3
.L635:
	cmp	rdx, rcx
	jb	.L641
.L638:
	movzx	eax, BYTE PTR [rcx]
	mov	r10, rcx
	add	rcx, 1
	cmp	al, r11b
	jne	.L635
	cmp	r9, 1
	je	.L633
	mov	eax, 1
	.p2align 5
	.p2align 4
	.p2align 3
.L636:
	movzx	ebx, BYTE PTR [r8+rax]
	cmp	BYTE PTR [r10+rax], bl
	jne	.L635
	add	rax, 1
	cmp	r9, rax
	jne	.L636
.L633:
	mov	rax, r10
	pop	rbx
	ret
	.p2align 4,,10
	.p2align 3
.L641:
	xor	r10d, r10d
	mov	rax, r10
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
	je	.L646
	call	memmove
	mov	rcx, rax
.L646:
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
	ja	.L674
	movsd	xmm2, QWORD PTR .LC16[rip]
	xor	ecx, ecx
	comisd	xmm0, xmm2
	jb	.L675
.L653:
	movsd	xmm1, QWORD PTR .LC12[rip]
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L660:
	mulsd	xmm0, xmm1
	add	eax, 1
	comisd	xmm0, xmm2
	jnb	.L660
	mov	DWORD PTR [rdx], eax
	movapd	xmm1, xmm0
	test	ecx, ecx
	je	.L650
.L677:
	movq	xmm1, QWORD PTR .LC13[rip]
.L655:
	xorpd	xmm1, xmm0
.L650:
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L675:
	movsd	xmm1, QWORD PTR .LC12[rip]
	comisd	xmm1, xmm0
	jbe	.L656
	ucomisd	xmm0, xmm3
	jp	.L666
	jne	.L666
.L656:
	movapd	xmm1, xmm0
	mov	DWORD PTR [rdx], 0
	movapd	xmm0, xmm1
	ret
	.p2align 4,,10
	.p2align 3
.L674:
	movsd	xmm3, QWORD PTR .LC14[rip]
	movq	xmm1, QWORD PTR .LC13[rip]
	movapd	xmm2, xmm0
	comisd	xmm3, xmm0
	xorpd	xmm2, xmm1
	jb	.L676
	movapd	xmm0, xmm2
	mov	ecx, 1
	movsd	xmm2, QWORD PTR .LC16[rip]
	jmp	.L653
	.p2align 4,,10
	.p2align 3
.L676:
	comisd	xmm0, QWORD PTR .LC15[rip]
	ja	.L664
	mov	DWORD PTR [rdx], 0
	movapd	xmm0, xmm2
	jmp	.L655
	.p2align 4,,10
	.p2align 3
.L664:
	movsd	xmm1, QWORD PTR .LC12[rip]
	mov	ecx, 1
.L654:
	movapd	xmm0, xmm2
	xor	eax, eax
	.p2align 4
	.p2align 4
	.p2align 3
.L662:
	addsd	xmm0, xmm0
	sub	eax, 1
	comisd	xmm1, xmm0
	ja	.L662
	mov	DWORD PTR [rdx], eax
	movapd	xmm1, xmm0
	test	ecx, ecx
	jne	.L677
	jmp	.L650
.L666:
	movapd	xmm2, xmm0
	xor	ecx, ecx
	jmp	.L654
	.seh_endproc
	.p2align 4
	.globl	__muldi3
	.def	__muldi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__muldi3
__muldi3:
	.seh_endprologue
	xor	r8d, r8d
	test	rcx, rcx
	je	.L678
	.p2align 5
	.p2align 4
	.p2align 3
.L680:
	mov	rax, rcx
	and	eax, 1
	neg	rax
	and	rax, rdx
	add	rdx, rdx
	add	r8, rax
	shr	rcx
	jne	.L680
.L678:
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
	jb	.L684
	jmp	.L685
	.p2align 4,,10
	.p2align 3
.L687:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L686
	test	eax, eax
	je	.L686
.L684:
	test	edx, edx
	jns	.L687
.L685:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L690:
	cmp	ecx, edx
	jb	.L689
	sub	ecx, edx
	or	r9d, eax
.L689:
	shr	edx
	shr	eax
	jne	.L690
	test	r8, r8
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L686:
	xor	r9d, r9d
	test	eax, eax
	jne	.L685
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
	je	.L705
	movsx	eax, al
	sal	eax, 8
	bsr	eax, eax
	xor	eax, 31
	lea	r8d, -1[rax]
.L705:
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
	je	.L708
	bsr	rax, rax
	xor	rax, 63
	lea	r8d, -1[rax]
.L708:
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
	je	.L711
	.p2align 5
	.p2align 4
	.p2align 3
.L713:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L713
.L711:
	mov	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmovd
	.def	__cmovd;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovd
__cmovd:
	.seh_endprologue
	mov	r9, rdx
	mov	eax, r8d
	mov	edx, r8d
	shr	edx, 3
	and	eax, -8
	cmp	rcx, r9
	jb	.L717
	mov	r10d, r8d
	add	r10, r9
	cmp	r10, rcx
	jnb	.L731
.L717:
	test	edx, edx
	je	.L720
	lea	r11d, 0[0+rdx*8]
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L721:
	mov	r10, QWORD PTR [r9+rdx]
	mov	QWORD PTR [rcx+rdx], r10
	add	rdx, 8
	cmp	r11, rdx
	jne	.L721
.L720:
	cmp	eax, r8d
	jnb	.L716
	.p2align 5
	.p2align 4
	.p2align 3
.L722:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	eax, r8d
	jb	.L722
.L716:
	ret
	.p2align 4,,10
	.p2align 3
.L731:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L716
	.p2align 4
	.p2align 4
	.p2align 3
.L723:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	jnb	.L723
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmovh
	.def	__cmovh;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovh
__cmovh:
	.seh_endprologue
	mov	eax, r8d
	shr	eax
	cmp	rcx, rdx
	jb	.L733
	mov	r9d, r8d
	add	r9, rdx
	cmp	r9, rcx
	jnb	.L748
.L733:
	test	eax, eax
	je	.L736
	lea	r10d, [rax+rax]
	xor	eax, eax
	.p2align 5
	.p2align 4
	.p2align 3
.L737:
	movzx	r9d, WORD PTR [rdx+rax]
	mov	WORD PTR [rcx+rax], r9w
	add	rax, 2
	cmp	r10, rax
	jne	.L737
.L736:
	test	r8b, 1
	je	.L732
	lea	eax, -1[r8]
	movzx	edx, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], dl
.L732:
	ret
	.p2align 4,,10
	.p2align 3
.L748:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L732
	.p2align 4
	.p2align 4
	.p2align 3
.L738:
	movzx	r8d, BYTE PTR [rdx+rax]
	mov	BYTE PTR [rcx+rax], r8b
	sub	rax, 1
	jnb	.L738
	ret
	.seh_endproc
	.p2align 4
	.globl	__cmovw
	.def	__cmovw;	.scl	2;	.type	32;	.endef
	.seh_proc	__cmovw
__cmovw:
	.seh_endprologue
	mov	r9, rdx
	mov	eax, r8d
	mov	edx, r8d
	shr	edx, 2
	and	eax, -4
	cmp	rcx, r9
	jb	.L750
	mov	r10d, r8d
	add	r10, r9
	cmp	r10, rcx
	jnb	.L764
.L750:
	test	edx, edx
	je	.L753
	lea	r11d, 0[0+rdx*4]
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L754:
	mov	r10d, DWORD PTR [r9+rdx]
	mov	DWORD PTR [rcx+rdx], r10d
	add	rdx, 4
	cmp	r11, rdx
	jne	.L754
.L753:
	cmp	eax, r8d
	jnb	.L749
	.p2align 5
	.p2align 4
	.p2align 3
.L755:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	add	rax, 1
	cmp	eax, r8d
	jb	.L755
.L749:
	ret
	.p2align 4,,10
	.p2align 3
.L764:
	lea	eax, -1[r8]
	test	r8d, r8d
	je	.L749
	.p2align 4
	.p2align 4
	.p2align 3
.L756:
	movzx	edx, BYTE PTR [r9+rax]
	mov	BYTE PTR [rcx+rax], dl
	sub	rax, 1
	jnb	.L756
	ret
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
	js	.L773
	pxor	xmm0, xmm0
	cvtsi2sd	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L773:
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
	js	.L776
	pxor	xmm0, xmm0
	cvtsi2ss	xmm0, rcx
	ret
	.p2align 4,,10
	.p2align 3
.L776:
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
	xor	eax, eax
	mov	r8d, 15
	movzx	ecx, cx
	.p2align 5
	.p2align 4
	.p2align 3
.L781:
	mov	edx, r8d
	sub	edx, eax
	bt	ecx, edx
	jc	.L779
	add	eax, 1
	cmp	eax, 16
	jne	.L781
.L779:
	ret
	.seh_endproc
	.p2align 4
	.globl	__ctzhi2
	.def	__ctzhi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__ctzhi2
__ctzhi2:
	.seh_endprologue
	xor	eax, eax
	movzx	ecx, cx
	.p2align 4
	.p2align 4
	.p2align 3
.L785:
	bt	ecx, eax
	jc	.L783
	add	eax, 1
	cmp	eax, 16
	jne	.L785
.L783:
	ret
	.seh_endproc
	.p2align 4
	.globl	__fixunssfsi
	.def	__fixunssfsi;	.scl	2;	.type	32;	.endef
	.seh_proc	__fixunssfsi
__fixunssfsi:
	.seh_endprologue
	comiss	xmm0, DWORD PTR .LC17[rip]
	jnb	.L793
	cvttss2si	eax, xmm0
	ret
	.p2align 4,,10
	.p2align 3
.L793:
	subss	xmm0, DWORD PTR .LC17[rip]
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
	xor	eax, eax
	mov	r8d, ecx
	xor	ecx, ecx
	movzx	r8d, r8w
	.p2align 5
	.p2align 4
	.p2align 3
.L795:
	mov	edx, r8d
	sar	edx, cl
	add	ecx, 1
	and	edx, 1
	add	eax, edx
	cmp	ecx, 16
	jne	.L795
	and	eax, 1
	ret
	.seh_endproc
	.p2align 4
	.globl	__popcounthi2
	.def	__popcounthi2;	.scl	2;	.type	32;	.endef
	.seh_proc	__popcounthi2
__popcounthi2:
	.seh_endprologue
	xor	edx, edx
	mov	r8d, ecx
	xor	ecx, ecx
	movzx	r8d, r8w
	.p2align 5
	.p2align 4
	.p2align 3
.L798:
	mov	eax, r8d
	sar	eax, cl
	add	ecx, 1
	and	eax, 1
	add	edx, eax
	cmp	ecx, 16
	jne	.L798
	mov	eax, edx
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
	je	.L800
	.p2align 5
	.p2align 4
	.p2align 3
.L802:
	mov	eax, ecx
	and	eax, 1
	neg	eax
	and	eax, edx
	add	edx, edx
	add	r8d, eax
	shr	ecx
	jne	.L802
.L800:
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
	je	.L805
	test	edx, edx
	je	.L805
	.p2align 5
	.p2align 4
	.p2align 3
.L807:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r8d, eax
	shr	edx
	jne	.L807
.L805:
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
	jb	.L813
	jmp	.L814
	.p2align 4,,10
	.p2align 3
.L816:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L815
	test	eax, eax
	je	.L815
.L813:
	test	edx, edx
	jns	.L816
.L814:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L819:
	cmp	ecx, edx
	jb	.L818
	sub	ecx, edx
	or	r9d, eax
.L818:
	shr	edx
	shr	eax
	jne	.L819
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L815:
	xor	r9d, r9d
	test	eax, eax
	jne	.L814
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
	ja	.L834
	xor	eax, eax
	comiss	xmm0, xmm1
	seta	al
.L834:
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
	ja	.L837
	xor	eax, eax
	comisd	xmm0, xmm1
	seta	al
.L837:
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
	js	.L851
	je	.L847
	xor	r11d, r11d
.L844:
	mov	r8d, 1
	xor	r9d, r9d
	.p2align 6
	.p2align 4
	.p2align 3
.L846:
	mov	eax, edx
	and	eax, 1
	neg	eax
	and	eax, ecx
	add	ecx, ecx
	add	r9d, eax
	sar	edx
	setne	r10b
	cmp	r8b, 31
	setbe	al
	add	r8d, 1
	test	r10b, al
	jne	.L846
	mov	eax, r9d
	neg	eax
	test	r11d, r11d
	cmovne	r9d, eax
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L851:
	neg	edx
	mov	r11d, 1
	jmp	.L844
	.p2align 4,,10
	.p2align 3
.L847:
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
	xor	r9d, r9d
	test	ecx, ecx
	jns	.L853
	neg	ecx
	mov	r9d, 1
.L853:
	test	edx, edx
	jns	.L854
	neg	edx
	xor	r9d, 1
.L854:
	mov	r8d, ecx
	mov	eax, 1
	cmp	edx, ecx
	jb	.L855
	jmp	.L856
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L874:
	test	eax, eax
	je	.L873
.L855:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jb	.L874
	test	eax, eax
	je	.L873
.L856:
	xor	ecx, ecx
	.p2align 4
	.p2align 4
	.p2align 3
.L861:
	cmp	r8d, edx
	jb	.L860
	sub	r8d, edx
	or	ecx, eax
.L860:
	shr	edx
	shr	eax
	jne	.L861
.L857:
	mov	eax, ecx
	neg	eax
	test	r9d, r9d
	cmove	eax, ecx
	ret
	.p2align 4,,10
	.p2align 3
.L873:
	xor	ecx, ecx
	jmp	.L857
	.seh_endproc
	.p2align 4
	.globl	__modsi3
	.def	__modsi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__modsi3
__modsi3:
	.seh_endprologue
	xor	r9d, r9d
	test	ecx, ecx
	jns	.L876
	neg	ecx
	mov	r9d, 1
.L876:
	mov	eax, edx
	mov	r8d, ecx
	neg	eax
	cmovs	eax, edx
	mov	edx, 1
	cmp	eax, ecx
	jb	.L877
	jmp	.L883
	.p2align 4
	.p2align 4,,10
	.p2align 3
.L895:
	test	edx, edx
	je	.L879
.L877:
	add	eax, eax
	add	edx, edx
	cmp	eax, ecx
	jb	.L895
	test	edx, edx
	je	.L879
	.p2align 5
	.p2align 4
	.p2align 3
.L883:
	mov	ecx, r8d
	sub	ecx, eax
	cmp	r8d, eax
	cmovnb	r8d, ecx
	shr	eax
	shr	edx
	jne	.L883
.L879:
	mov	eax, r8d
	neg	eax
	test	r9d, r9d
	cmove	eax, r8d
	ret
	.seh_endproc
	.p2align 4
	.globl	__udivmodhi4
	.def	__udivmodhi4;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodhi4
__udivmodhi4:
	.seh_endprologue
	mov	r9d, 1
	mov	r10d, ecx
	mov	eax, edx
	cmp	dx, cx
	jb	.L897
	jmp	.L898
	.p2align 4,,10
	.p2align 3
.L900:
	add	eax, eax
	add	r9d, r9d
	cmp	ax, r10w
	jnb	.L899
	test	r9w, r9w
	je	.L899
.L897:
	test	ax, ax
	jns	.L900
.L898:
	xor	edx, edx
	.p2align 5
	.p2align 4
	.p2align 3
.L903:
	cmp	r10w, ax
	jb	.L902
	sub	r10d, eax
	or	edx, r9d
.L902:
	shr	ax
	shr	r9w
	jne	.L903
	test	r8d, r8d
	cmovne	edx, r10d
	mov	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L899:
	xor	edx, edx
	test	r9w, r9w
	jne	.L898
	test	r8d, r8d
	cmovne	edx, r10d
	mov	eax, edx
	ret
	.seh_endproc
	.p2align 4
	.globl	__udivmodsi4_libgcc
	.def	__udivmodsi4_libgcc;	.scl	2;	.type	32;	.endef
	.seh_proc	__udivmodsi4_libgcc
__udivmodsi4_libgcc:
	.seh_endprologue
	mov	eax, 1
	cmp	edx, ecx
	jb	.L919
	jmp	.L920
	.p2align 4,,10
	.p2align 3
.L922:
	add	edx, edx
	add	eax, eax
	cmp	edx, ecx
	jnb	.L921
	test	eax, eax
	je	.L921
.L919:
	test	edx, edx
	jns	.L922
.L920:
	xor	r9d, r9d
	.p2align 4
	.p2align 4
	.p2align 3
.L925:
	cmp	ecx, edx
	jb	.L924
	sub	ecx, edx
	or	r9d, eax
.L924:
	shr	edx
	shr	eax
	jne	.L925
	test	r8d, r8d
	cmovne	r9d, ecx
	mov	eax, r9d
	ret
	.p2align 4,,10
	.p2align 3
.L921:
	xor	r9d, r9d
	test	eax, eax
	jne	.L920
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
	je	.L941
	lea	ecx, -32[rdx]
	xor	eax, eax
	sal	r8d, cl
.L942:
	sal	r8, 32
	or	rax, r8
.L940:
	ret
	.p2align 4,,10
	.p2align 3
.L941:
	mov	rax, rcx
	test	edx, edx
	je	.L940
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
	jmp	.L942
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
	je	.L947
	lea	ecx, -64[rdx]
	xor	r9d, r9d
	sal	rax, cl
.L948:
	mov	rcx, rax
	mov	rax, r9
	mov	rdx, rcx
.L949:
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
.L947:
	test	edx, edx
	je	.L950
	mov	r9, rax
	mov	ecx, edx
	sal	r9, cl
	mov	ecx, 64
	sub	ecx, edx
	shr	rax, cl
	mov	ecx, edx
	sal	r8, cl
	or	rax, r8
	jmp	.L948
	.p2align 4,,10
	.p2align 3
.L950:
	mov	rdx, r8
	jmp	.L949
	.seh_endproc
	.p2align 4
	.globl	__ashrdi3
	.def	__ashrdi3;	.scl	2;	.type	32;	.endef
	.seh_proc	__ashrdi3
__ashrdi3:
	.seh_endprologue
	mov	r8, rcx
	test	dl, 32
	je	.L952
	sar	r8, 32
	lea	ecx, -32[rdx]
	mov	eax, r8d
	sar	r8d, cl
	sar	eax, 31
.L953:
	sal	rax, 32
	or	rax, r8
.L951:
	ret
	.p2align 4,,10
	.p2align 3
.L952:
	mov	rax, rcx
	test	edx, edx
	je	.L951
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
	jmp	.L953
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
	je	.L958
	mov	r10, rax
	lea	ecx, -64[rdx]
	sar	r10, 63
	sar	rax, cl
.L959:
	mov	rdx, rax
	mov	rax, r10
.L960:
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
.L958:
	test	edx, edx
	je	.L961
	mov	r10, rax
	mov	ecx, edx
	sar	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L959
	.p2align 4,,10
	.p2align 3
.L961:
	mov	rdx, r8
	jmp	.L960
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
	jl	.L966
	mov	eax, 2
	jg	.L966
	xor	eax, eax
	cmp	ecx, edx
	jb	.L966
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L966:
	ret
	.seh_endproc
	.p2align 4
	.globl	__aeabi_lcmp
	.def	__aeabi_lcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_lcmp
__aeabi_lcmp:
	.seh_endprologue
	xor	eax, eax
	mov	r9, rcx
	mov	r8, rdx
	sar	r9, 32
	sar	r8, 32
	cmp	r9d, r8d
	jl	.L973
	mov	eax, 2
	jg	.L973
	xor	eax, eax
	cmp	ecx, edx
	jb	.L973
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L973:
	sub	eax, 1
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
	jl	.L978
	mov	eax, 2
	jg	.L978
	xor	eax, eax
	cmp	r8, r9
	jb	.L978
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L978:
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
	jne	.L987
	xor	eax, eax
	rep bsf	rax, rdx
	add	eax, 65
	test	rdx, rdx
	mov	edx, 0
	cmove	eax, edx
	ret
	.p2align 4,,10
	.p2align 3
.L987:
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
	je	.L991
	shr	r8, 32
	lea	ecx, -32[rdx]
	xor	eax, eax
	shr	r8d, cl
.L992:
	sal	rax, 32
	or	rax, r8
.L990:
	ret
	.p2align 4,,10
	.p2align 3
.L991:
	mov	rax, rcx
	test	edx, edx
	je	.L990
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
	jmp	.L992
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
	je	.L997
	lea	ecx, -64[rdx]
	xor	r10d, r10d
	shr	rax, cl
.L998:
	mov	rdx, rax
	mov	rax, r10
.L999:
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
.L997:
	test	edx, edx
	je	.L1000
	mov	r10, rax
	mov	ecx, edx
	shr	r10, cl
	mov	ecx, 64
	sub	ecx, edx
	sal	rax, cl
	mov	ecx, edx
	shr	r8, cl
	or	rax, r8
	jmp	.L998
	.p2align 4,,10
	.p2align 3
.L1000:
	mov	rdx, r8
	jmp	.L999
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
	movsd	xmm2, QWORD PTR .LC16[rip]
	movapd	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1014
	.p2align 4
	.p2align 3
.L1016:
	mulsd	xmm1, xmm0
.L1014:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1015
	mulsd	xmm0, xmm0
	test	al, 1
	jne	.L1016
.L1020:
	mulsd	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1016
	jmp	.L1020
	.p2align 4,,10
	.p2align 3
.L1015:
	test	edx, edx
	jns	.L1013
	divsd	xmm2, xmm1
	movapd	xmm1, xmm2
.L1013:
	movapd	xmm0, xmm1
	ret
	.seh_endproc
	.p2align 4
	.globl	__powisf2
	.def	__powisf2;	.scl	2;	.type	32;	.endef
	.seh_proc	__powisf2
__powisf2:
	.seh_endprologue
	movss	xmm2, DWORD PTR .LC18[rip]
	movaps	xmm1, xmm2
	mov	eax, edx
	test	dl, 1
	je	.L1022
	.p2align 4
	.p2align 3
.L1024:
	mulss	xmm1, xmm0
.L1022:
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	je	.L1023
	mulss	xmm0, xmm0
	test	al, 1
	jne	.L1024
.L1028:
	mulss	xmm0, xmm0
	mov	ecx, eax
	shr	ecx, 31
	add	eax, ecx
	sar	eax
	test	al, 1
	jne	.L1024
	jmp	.L1028
	.p2align 4,,10
	.p2align 3
.L1023:
	test	edx, edx
	jns	.L1021
	divss	xmm2, xmm1
	movaps	xmm1, xmm2
.L1021:
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
	jb	.L1029
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L1029
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1029
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1029:
	ret
	.seh_endproc
	.p2align 4
	.globl	__aeabi_ulcmp
	.def	__aeabi_ulcmp;	.scl	2;	.type	32;	.endef
	.seh_proc	__aeabi_ulcmp
__aeabi_ulcmp:
	.seh_endprologue
	xor	eax, eax
	mov	r8, rcx
	mov	r9, rdx
	shr	r8, 32
	shr	r9, 32
	cmp	r8d, r9d
	jb	.L1036
	mov	eax, 2
	cmp	r9d, r8d
	jb	.L1036
	xor	eax, eax
	cmp	ecx, edx
	jb	.L1036
	xor	eax, eax
	cmp	edx, ecx
	setb	al
	add	eax, 1
.L1036:
	sub	eax, 1
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
	jb	.L1041
	mov	eax, 2
	cmp	rdx, rcx
	jb	.L1041
	xor	eax, eax
	cmp	r8, r9
	jb	.L1041
	xor	eax, eax
	cmp	r9, r8
	setb	al
	add	eax, 1
.L1041:
	ret
	.seh_endproc
.lcomm s.0,7,1
.lcomm seed,8,8
	.section .rdata,"dr"
	.align 32
digits:
	.ascii "./0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz\0"
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
	.long	-1074790400
	.align 8
.LC15:
	.long	0
	.long	-1075838976
	.align 8
.LC16:
	.long	0
	.long	1072693248
	.align 4
.LC17:
	.long	1191182336
	.align 4
.LC18:
	.long	1065353216
	.ident	"GCC: (GNU) 14.2.1 20240801 (Fedora MinGW 14.2.1-3.fc41)"
	.def	memcpy;	.scl	2;	.type	32;	.endef
	.def	memmove;	.scl	2;	.type	32;	.endef
